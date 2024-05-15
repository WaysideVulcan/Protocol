#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_s_axis_video_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_data_V.dat");
unsigned int ap_apatb_s_axis_video_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_keep_V.dat");
unsigned int ap_apatb_s_axis_video_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_strb_V.dat");
unsigned int ap_apatb_s_axis_video_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_user_V.dat");
unsigned int ap_apatb_s_axis_video_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_last_V.dat");
unsigned int ap_apatb_s_axis_video_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_id_V.dat");
unsigned int ap_apatb_s_axis_video_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_dest_V.dat");
using hls::sim::Byte;
struct __cosim_s32__ { char data[32]; };
struct __cosim_s15__ { char data[16]; };
struct __cosim_s16__ { char data[16]; };
extern "C" void v_frmbuf_wr(Byte<32>*, short, short, short, short, int, int, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_v_frmbuf_wr_hw(short __xlx_apatb_param_width, short __xlx_apatb_param_height, short __xlx_apatb_param_stride, short __xlx_apatb_param_video_format, volatile void * __xlx_apatb_param_frm_buffer, volatile void * __xlx_apatb_param_frm_buffer2, volatile void * __xlx_apatb_param_frm_buffer3, volatile void * __xlx_apatb_param_s_axis_video_V_data_V, volatile void * __xlx_apatb_param_s_axis_video_V_keep_V, volatile void * __xlx_apatb_param_s_axis_video_V_strb_V, volatile void * __xlx_apatb_param_s_axis_video_V_user_V, volatile void * __xlx_apatb_param_s_axis_video_V_last_V, volatile void * __xlx_apatb_param_s_axis_video_V_id_V, volatile void * __xlx_apatb_param_s_axis_video_V_dest_V) {
using hls::sim::createStream;
  // Collect __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec
std::vector<Byte<32>> __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec;
for (size_t i = 0; i < 2073600; ++i){
__xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_frm_buffer)[i]);
}
  int __xlx_size_param_frm_buffer = 2073600;
  int __xlx_offset_param_frm_buffer = 0;
  int __xlx_offset_byte_param_frm_buffer = 0*32;
for (size_t i = 0; i < 2073600; ++i){
__xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_frm_buffer2)[i]);
}
  int __xlx_size_param_frm_buffer2 = 2073600;
  int __xlx_offset_param_frm_buffer2 = 2073600;
  int __xlx_offset_byte_param_frm_buffer2 = 2073600*32;
for (size_t i = 0; i < 2073600; ++i){
__xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_frm_buffer3)[i]);
}
  int __xlx_size_param_frm_buffer3 = 2073600;
  int __xlx_offset_param_frm_buffer3 = 4147200;
  int __xlx_offset_byte_param_frm_buffer3 = 4147200*32;
auto* ss_axis_video_V_data_V = createStream((hls::stream<__cosim_s15__>*)__xlx_apatb_param_s_axis_video_V_data_V);
auto* ss_axis_video_V_keep_V = createStream((hls::stream<short>*)__xlx_apatb_param_s_axis_video_V_keep_V);
auto* ss_axis_video_V_strb_V = createStream((hls::stream<short>*)__xlx_apatb_param_s_axis_video_V_strb_V);
auto* ss_axis_video_V_user_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V);
auto* ss_axis_video_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V);
auto* ss_axis_video_V_id_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V);
auto* ss_axis_video_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V);
  // DUT call
  v_frmbuf_wr(__xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec.data(), __xlx_apatb_param_width, __xlx_apatb_param_height, __xlx_apatb_param_stride, __xlx_apatb_param_video_format, __xlx_offset_byte_param_frm_buffer, __xlx_offset_byte_param_frm_buffer2, __xlx_offset_byte_param_frm_buffer3, ss_axis_video_V_data_V->data<__cosim_s15__>(), ss_axis_video_V_keep_V->data<short>(), ss_axis_video_V_strb_V->data<short>(), ss_axis_video_V_user_V->data<char>(), ss_axis_video_V_last_V->data<char>(), ss_axis_video_V_id_V->data<char>(), ss_axis_video_V_dest_V->data<char>());
// print __xlx_apatb_param_frm_buffer
for (size_t i = 0; i < __xlx_size_param_frm_buffer; ++i) {
((Byte<32>*)__xlx_apatb_param_frm_buffer)[i] = __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec[__xlx_offset_param_frm_buffer+i];
}
// print __xlx_apatb_param_frm_buffer2
for (size_t i = 0; i < __xlx_size_param_frm_buffer2; ++i) {
((Byte<32>*)__xlx_apatb_param_frm_buffer2)[i] = __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec[__xlx_offset_param_frm_buffer2+i];
}
// print __xlx_apatb_param_frm_buffer3
for (size_t i = 0; i < __xlx_size_param_frm_buffer3; ++i) {
((Byte<32>*)__xlx_apatb_param_frm_buffer3)[i] = __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec[__xlx_offset_param_frm_buffer3+i];
}
ss_axis_video_V_data_V->transfer((hls::stream<__cosim_s15__>*)__xlx_apatb_param_s_axis_video_V_data_V);
ss_axis_video_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_s_axis_video_V_keep_V);
ss_axis_video_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_s_axis_video_V_strb_V);
ss_axis_video_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V);
ss_axis_video_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V);
ss_axis_video_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V);
ss_axis_video_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V);
}

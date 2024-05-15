#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_width "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_width.dat"
#define AUTOTB_TVOUT_width "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_width.dat"
#define AUTOTB_TVIN_height "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_height.dat"
#define AUTOTB_TVOUT_height "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_height.dat"
#define AUTOTB_TVIN_stride "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_stride.dat"
#define AUTOTB_TVOUT_stride "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_stride.dat"
#define AUTOTB_TVIN_video_format "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_video_format.dat"
#define AUTOTB_TVOUT_video_format "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_video_format.dat"
#define AUTOTB_TVIN_frm_buffer "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_frm_buffer.dat"
#define AUTOTB_TVOUT_frm_buffer "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_frm_buffer.dat"
#define AUTOTB_TVIN_frm_buffer2 "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_frm_buffer2.dat"
#define AUTOTB_TVOUT_frm_buffer2 "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_frm_buffer2.dat"
#define AUTOTB_TVIN_frm_buffer3 "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_frm_buffer3.dat"
#define AUTOTB_TVOUT_frm_buffer3 "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_frm_buffer3.dat"
#define AUTOTB_TVIN_s_axis_video_V_data_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_s_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_data_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_keep_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_keep_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_strb_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_strb_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_user_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_s_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_user_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_user_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_last_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_s_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_last_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_last_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_id_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_s_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_id_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_id_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_dest_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_dest_V "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V "../tv/stream_size/stream_size_in_s_axis_video_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V "../tv/stream_size/stream_size_in_s_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V "../tv/stream_size/stream_size_in_s_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V "../tv/stream_size/stream_size_in_s_axis_video_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V "../tv/stream_size/stream_size_in_s_axis_video_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V "../tv/stream_size/stream_size_in_s_axis_video_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V "../tv/stream_size/stream_size_in_s_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVIN_mm_video "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvin_mm_video.dat"
#define AUTOTB_TVOUT_mm_video "../tv/cdatafile/c.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_mm_video.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_video_V_data_V "../tv/rtldatafile/rtl.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_keep_V "../tv/rtldatafile/rtl.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_strb_V "../tv/rtldatafile/rtl.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_user_V "../tv/rtldatafile/rtl.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_last_V "../tv/rtldatafile/rtl.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_id_V "../tv/rtldatafile/rtl.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_dest_V "../tv/rtldatafile/rtl.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_mm_video "../tv/rtldatafile/rtl.dpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.autotvout_mm_video.dat"


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
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      size_t depth = 0;
      for (size_t n : nbytes) {
        depth += divide_ceil(n, asize);
      }
      return depth;
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = divide_ceil(nbytes[0], asize);
      } else {
        tcl.set(name[0], depth());
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct A2Stream {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }
#endif
  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for MAXI interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.nbytes[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
    }
    writer->end();
  }

  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void v_frmbuf_wr_hw_stub_wrapper(hls::sim::Byte<2>, hls::sim::Byte<2>, hls::sim::Byte<2>, hls::sim::Byte<2>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_v_frmbuf_wr_hw(hls::sim::Byte<2> __xlx_apatb_param_width, hls::sim::Byte<2> __xlx_apatb_param_height, hls::sim::Byte<2> __xlx_apatb_param_stride, hls::sim::Byte<2> __xlx_apatb_param_video_format, void* __xlx_apatb_param_frm_buffer, void* __xlx_apatb_param_frm_buffer2, void* __xlx_apatb_param_frm_buffer3, void* __xlx_apatb_param_s_axis_video_V_data_V, void* __xlx_apatb_param_s_axis_video_V_keep_V, void* __xlx_apatb_param_s_axis_video_V_strb_V, void* __xlx_apatb_param_s_axis_video_V_user_V, void* __xlx_apatb_param_s_axis_video_V_last_V, void* __xlx_apatb_param_s_axis_video_V_id_V, void* __xlx_apatb_param_s_axis_video_V_dest_V)
{
  static hls::sim::Register port0 {
    .name = "width",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_width),
#endif
  };
  port0.param = &__xlx_apatb_param_width;

  static hls::sim::Register port1 {
    .name = "height",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_height),
#endif
  };
  port1.param = &__xlx_apatb_param_height;

  static hls::sim::Register port2 {
    .name = "stride",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_stride),
#endif
  };
  port2.param = &__xlx_apatb_param_stride;

  static hls::sim::Register port3 {
    .name = "video_format",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_video_format),
#endif
  };
  port3.param = &__xlx_apatb_param_video_format;

  hls::sim::Byte<4> __xlx_offset_byte_param_frm_buffer;
  static hls::sim::Register port4 {
    .name = "frm_buffer",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_frm_buffer),
#endif
  };
  port4.param = &__xlx_offset_byte_param_frm_buffer;

  hls::sim::Byte<4> __xlx_offset_byte_param_frm_buffer2;
  static hls::sim::Register port5 {
    .name = "frm_buffer2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_frm_buffer2),
#endif
  };
  port5.param = &__xlx_offset_byte_param_frm_buffer2;

  hls::sim::Byte<4> __xlx_offset_byte_param_frm_buffer3;
  static hls::sim::Register port6 {
    .name = "frm_buffer3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_frm_buffer3),
#endif
  };
  port6.param = &__xlx_offset_byte_param_frm_buffer3;

  static hls::sim::Stream<hls::sim::Byte<16>> port7 {
    .width = 120,
    .name = "s_axis_video_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V),
#endif
  };
  port7.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_s_axis_video_V_data_V;
  port7.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port8 {
    .width = 15,
    .name = "s_axis_video_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V),
#endif
  };
  port8.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_s_axis_video_V_keep_V;
  port8.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port9 {
    .width = 15,
    .name = "s_axis_video_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V),
#endif
  };
  port9.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_s_axis_video_V_strb_V;
  port9.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port10 {
    .width = 1,
    .name = "s_axis_video_V_user_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_user_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V),
#endif
  };
  port10.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_user_V;
  port10.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port11 {
    .width = 1,
    .name = "s_axis_video_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V),
#endif
  };
  port11.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_last_V;
  port11.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port12 {
    .width = 1,
    .name = "s_axis_video_V_id_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_id_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V),
#endif
  };
  port12.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_id_V;
  port12.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port13 {
    .width = 1,
    .name = "s_axis_video_V_dest_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_dest_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V),
#endif
  };
  port13.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_dest_V;
  port13.hasWrite = false;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port14 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port14 {
#endif
    .width = 256,
    .asize = 32,
    .hbm = false,
    .name = { "mm_video" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_mm_video),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_mm_video),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_mm_video),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_mm_video),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_mm_video),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_mm_video),
#endif
#endif
  };
  __xlx_offset_byte_param_frm_buffer = 0*32;
  __xlx_offset_byte_param_frm_buffer2 = 2073600*32;
  __xlx_offset_byte_param_frm_buffer3 = 4147200*32;
  port14.param = { __xlx_apatb_param_frm_buffer, __xlx_apatb_param_frm_buffer2, __xlx_apatb_param_frm_buffer3 };
  port14.nbytes = { 66355200, 66355200, 66355200 };
  port14.offset = { 0, 2073600, 4147200 };
  port14.hasWrite = { true, true, true };

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port14);
    check(port7);
    check(port8);
    check(port9);
    check(port10);
    check(port11);
    check(port12);
    check(port13);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port14.doTCL(tcl);
    port7.markSize();
    port8.markSize();
    port9.markSize();
    port10.markSize();
    port11.markSize();
    port12.markSize();
    port13.markSize();
    port7.buffer();
    port8.buffer();
    port9.buffer();
    port10.buffer();
    port11.buffer();
    port12.buffer();
    port13.buffer();
    CodeState = CALL_C_DUT;
    v_frmbuf_wr_hw_stub_wrapper(__xlx_apatb_param_width, __xlx_apatb_param_height, __xlx_apatb_param_stride, __xlx_apatb_param_video_format, __xlx_apatb_param_frm_buffer, __xlx_apatb_param_frm_buffer2, __xlx_apatb_param_frm_buffer3, __xlx_apatb_param_s_axis_video_V_data_V, __xlx_apatb_param_s_axis_video_V_keep_V, __xlx_apatb_param_s_axis_video_V_strb_V, __xlx_apatb_param_s_axis_video_V_user_V, __xlx_apatb_param_s_axis_video_V_last_V, __xlx_apatb_param_s_axis_video_V_id_V, __xlx_apatb_param_s_axis_video_V_dest_V);
    dump(port7, tcl.AESL_transaction);
    dump(port8, tcl.AESL_transaction);
    dump(port9, tcl.AESL_transaction);
    dump(port10, tcl.AESL_transaction);
    dump(port11, tcl.AESL_transaction);
    dump(port12, tcl.AESL_transaction);
    dump(port13, tcl.AESL_transaction);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    CodeState = DUMP_OUTPUTS;
    dump(port14, port14.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}
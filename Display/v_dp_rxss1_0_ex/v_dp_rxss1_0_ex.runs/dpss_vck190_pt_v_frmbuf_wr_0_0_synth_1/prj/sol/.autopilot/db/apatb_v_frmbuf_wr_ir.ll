; ModuleID = 'C:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.runs/dpss_vck190_pt_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }
%"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<120>, 1, 1, 1, '8', false>" }
%"struct.hls::axis<ap_uint<120>, 1, 1, 1, '8', false>" = type { %"struct.ap_uint<120>", %"struct.ap_uint<15>", %"struct.ap_uint<15>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<120>" = type { %"struct.ap_int_base<120, false>" }
%"struct.ap_int_base<120, false>" = type { %"struct.ssdm_int<120, false>" }
%"struct.ssdm_int<120, false>" = type { i120 }
%"struct.ap_uint<15>" = type { %"struct.ap_int_base<15, false>" }
%"struct.ap_int_base<15, false>" = type { %"struct.ssdm_int<15, false>" }
%"struct.ssdm_int<15, false>" = type { i15 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_v_frmbuf_wr_ir(i16 zeroext %width, i16 zeroext %height, i16 zeroext %stride, i16 zeroext %video_format, %"struct.ap_uint<256>"* noalias nonnull "maxi" %frm_buffer, %"struct.ap_uint<256>"* noalias nonnull "maxi" %frm_buffer2, %"struct.ap_uint<256>"* noalias nonnull "maxi" %frm_buffer3, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(32) %s_axis_video) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 66355200)
  %frm_buffer_copy = bitcast i8* %malloccall to [2073600 x i256]*
  %malloccall1 = call i8* @malloc(i64 66355200)
  %frm_buffer2_copy = bitcast i8* %malloccall1 to [2073600 x i256]*
  %malloccall2 = call i8* @malloc(i64 66355200)
  %frm_buffer3_copy = bitcast i8* %malloccall2 to [2073600 x i256]*
  %s_axis_video_copy.data = alloca i120, align 512
  %s_axis_video_copy.keep = alloca i15, align 512
  %s_axis_video_copy.strb = alloca i15, align 512
  %s_axis_video_copy.user = alloca i1, align 512
  %s_axis_video_copy.last = alloca i1, align 512
  %s_axis_video_copy.id = alloca i1, align 512
  %s_axis_video_copy.dest = alloca i1, align 512
  %0 = bitcast %"struct.ap_uint<256>"* %frm_buffer to [2073600 x %"struct.ap_uint<256>"]*
  %1 = bitcast %"struct.ap_uint<256>"* %frm_buffer2 to [2073600 x %"struct.ap_uint<256>"]*
  %2 = bitcast %"struct.ap_uint<256>"* %frm_buffer3 to [2073600 x %"struct.ap_uint<256>"]*
  call fastcc void @copy_in([2073600 x %"struct.ap_uint<256>"]* nonnull %0, [2073600 x i256]* %frm_buffer_copy, [2073600 x %"struct.ap_uint<256>"]* nonnull %1, [2073600 x i256]* %frm_buffer2_copy, [2073600 x %"struct.ap_uint<256>"]* nonnull %2, [2073600 x i256]* %frm_buffer3_copy, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* nonnull %s_axis_video, i120* nonnull align 512 %s_axis_video_copy.data, i15* nonnull align 512 %s_axis_video_copy.keep, i15* nonnull align 512 %s_axis_video_copy.strb, i1* nonnull align 512 %s_axis_video_copy.user, i1* nonnull align 512 %s_axis_video_copy.last, i1* nonnull align 512 %s_axis_video_copy.id, i1* nonnull align 512 %s_axis_video_copy.dest)
  %3 = getelementptr [2073600 x i256], [2073600 x i256]* %frm_buffer_copy, i64 0, i64 0
  %4 = getelementptr [2073600 x i256], [2073600 x i256]* %frm_buffer2_copy, i64 0, i64 0
  %5 = getelementptr [2073600 x i256], [2073600 x i256]* %frm_buffer3_copy, i64 0, i64 0
  call void @apatb_v_frmbuf_wr_hw(i16 %width, i16 %height, i16 %stride, i16 %video_format, i256* %3, i256* %4, i256* %5, i120* %s_axis_video_copy.data, i15* %s_axis_video_copy.keep, i15* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest)
  call void @copy_back([2073600 x %"struct.ap_uint<256>"]* %0, [2073600 x i256]* %frm_buffer_copy, [2073600 x %"struct.ap_uint<256>"]* %1, [2073600 x i256]* %frm_buffer2_copy, [2073600 x %"struct.ap_uint<256>"]* %2, [2073600 x i256]* %frm_buffer3_copy, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %s_axis_video, i120* %s_axis_video_copy.data, i15* %s_axis_video_copy.keep, i15* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in([2073600 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="0", [2073600 x i256]* noalias nocapture "unpacked"="1.0", [2073600 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="2", [2073600 x i256]* noalias nocapture "unpacked"="3.0", [2073600 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="4", [2073600 x i256]* noalias nocapture "unpacked"="5.0", %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* noalias "unpacked"="6", i120* noalias align 512 "unpacked"="7.0" %_V_data_V, i15* noalias align 512 "unpacked"="7.1" %_V_keep_V, i15* noalias align 512 "unpacked"="7.2" %_V_strb_V, i1* noalias align 512 "unpacked"="7.3" %_V_user_V, i1* noalias align 512 "unpacked"="7.4" %_V_last_V, i1* noalias align 512 "unpacked"="7.5" %_V_id_V, i1* noalias align 512 "unpacked"="7.6" %_V_dest_V) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>"([2073600 x i256]* %1, [2073600 x %"struct.ap_uint<256>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>"([2073600 x i256]* %3, [2073600 x %"struct.ap_uint<256>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>"([2073600 x i256]* %5, [2073600 x %"struct.ap_uint<256>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>.48"(i120* align 512 %_V_data_V, i15* align 512 %_V_keep_V, i15* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %6)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* noalias %dst, i120* noalias align 512 "unpacked"="1.0" %src_V_data_V, i15* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i15* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_user_V, i1* noalias align 512 "unpacked"="1.4" %src_V_last_V, i1* noalias align 512 "unpacked"="1.5" %src_V_id_V, i1* noalias align 512 "unpacked"="1.6" %src_V_dest_V) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* nonnull %dst, i120* align 512 %src_V_data_V, i15* align 512 %src_V_keep_V, i15* align 512 %src_V_strb_V, i1* align 512 %src_V_user_V, i1* align 512 %src_V_last_V, i1* align 512 %src_V_id_V, i1* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* noalias nocapture, i120* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i15* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i15* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="1.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="1.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="1.6" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = alloca i120
  %2 = alloca i15
  %3 = alloca i15
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i120* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_16(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i120* %1 to i8*
  %12 = bitcast i120* %_V_data_V to i8*
  call void @fpga_fifo_pop_16(i8* %11, i8* %12)
  %13 = load volatile i120, i120* %1
  %14 = bitcast i15* %3 to i8*
  %15 = bitcast i15* %_V_keep_V to i8*
  call void @fpga_fifo_pop_2(i8* %14, i8* %15)
  %16 = bitcast i15* %3 to i16*
  %17 = load i16, i16* %16
  %18 = trunc i16 %17 to i15
  %19 = bitcast i15* %2 to i8*
  %20 = bitcast i15* %_V_strb_V to i8*
  call void @fpga_fifo_pop_2(i8* %19, i8* %20)
  %21 = bitcast i15* %2 to i16*
  %22 = load i16, i16* %21
  %23 = trunc i16 %22 to i15
  %24 = bitcast i1* %7 to i8*
  %25 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %7 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = bitcast i1* %6 to i8*
  %30 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %29, i8* %30)
  %31 = bitcast i1* %6 to i8*
  %32 = load i8, i8* %31
  %33 = trunc i8 %32 to i1
  %34 = bitcast i1* %5 to i8*
  %35 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %34, i8* %35)
  %36 = bitcast i1* %5 to i8*
  %37 = load i8, i8* %36
  %38 = trunc i8 %37 to i1
  %39 = bitcast i1* %4 to i8*
  %40 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %39, i8* %40)
  %41 = bitcast i1* %4 to i8*
  %42 = load i8, i8* %41
  %43 = trunc i8 %42 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" undef, i120 %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i15 %18, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i15 %23, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %28, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %.fca.0.3.0.0.0.insert, i1 %33, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i1 %38, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %.fca.0.5.0.0.0.insert, i1 %43, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %8
  %44 = bitcast %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %8 to i8*
  %45 = bitcast %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %44, i8* %45)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out([2073600 x %"struct.ap_uint<256>"]* noalias "unpacked"="0", [2073600 x i256]* noalias nocapture readonly "unpacked"="1.0", [2073600 x %"struct.ap_uint<256>"]* noalias "unpacked"="2", [2073600 x i256]* noalias nocapture readonly "unpacked"="3.0", [2073600 x %"struct.ap_uint<256>"]* noalias "unpacked"="4", [2073600 x i256]* noalias nocapture readonly "unpacked"="5.0", %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* noalias "unpacked"="6", i120* noalias align 512 "unpacked"="7.0" %_V_data_V, i15* noalias align 512 "unpacked"="7.1" %_V_keep_V, i15* noalias align 512 "unpacked"="7.2" %_V_strb_V, i1* noalias align 512 "unpacked"="7.3" %_V_user_V, i1* noalias align 512 "unpacked"="7.4" %_V_last_V, i1* noalias align 512 "unpacked"="7.5" %_V_id_V, i1* noalias align 512 "unpacked"="7.6" %_V_dest_V) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>.18"([2073600 x %"struct.ap_uint<256>"]* %0, [2073600 x i256]* %1)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>.18"([2073600 x %"struct.ap_uint<256>"]* %2, [2073600 x i256]* %3)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>.18"([2073600 x %"struct.ap_uint<256>"]* %4, [2073600 x i256]* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %6, i120* align 512 %_V_data_V, i15* align 512 %_V_keep_V, i15* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>.18"([2073600 x %"struct.ap_uint<256>"]* noalias "unpacked"="0" %dst, [2073600 x i256]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [2073600 x %"struct.ap_uint<256>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2073600struct.ap_uint<256>.21"([2073600 x %"struct.ap_uint<256>"]* nonnull %dst, [2073600 x i256]* %src, i64 2073600)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2073600struct.ap_uint<256>.21"([2073600 x %"struct.ap_uint<256>"]* "unpacked"="0" %dst, [2073600 x i256]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [2073600 x %"struct.ap_uint<256>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2073600 x i256], [2073600 x i256]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [2073600 x %"struct.ap_uint<256>"], [2073600 x %"struct.ap_uint<256>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %1, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>"([2073600 x i256]* noalias nocapture "unpacked"="0.0" %dst, [2073600 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [2073600 x %"struct.ap_uint<256>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2073600struct.ap_uint<256>.28"([2073600 x i256]* %dst, [2073600 x %"struct.ap_uint<256>"]* nonnull %src, i64 2073600)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2073600struct.ap_uint<256>.28"([2073600 x i256]* nocapture "unpacked"="0.0" %dst, [2073600 x %"struct.ap_uint<256>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [2073600 x %"struct.ap_uint<256>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2073600 x %"struct.ap_uint<256>"], [2073600 x %"struct.ap_uint<256>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [2073600 x i256], [2073600 x i256]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %1, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>.48"(i120* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i15* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i15* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_user_V, i1* noalias align 512 "unpacked"="0.4" %dst_V_last_V, i1* noalias align 512 "unpacked"="0.5" %dst_V_id_V, i1* noalias align 512 "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>.51"(i120* align 512 %dst_V_data_V, i15* align 512 %dst_V_keep_V, i15* align 512 %dst_V_strb_V, i1* align 512 %dst_V_user_V, i1* align 512 %dst_V_last_V, i1* align 512 %dst_V_id_V, i1* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>.51"(i120* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i15* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i15* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="0.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="0.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* noalias nocapture) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"
  %2 = alloca i120
  %3 = alloca i15
  %4 = alloca i15
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  %10 = call i1 @fpga_fifo_not_empty_32(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %1 to i8*
  %12 = bitcast %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_32(i8* %11, i8* %12)
  %13 = load volatile %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %13, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %13, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %13, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %13, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>" %13, 0, 6, 0, 0, 0
  store i120 %.fca.0.0.0.0.0.extract, i120* %2
  %14 = bitcast i120* %2 to i8*
  %15 = bitcast i120* %_V_data_V to i8*
  call void @fpga_fifo_push_16(i8* %14, i8* %15)
  store i15 %.fca.0.1.0.0.0.extract, i15* %4
  %16 = bitcast i15* %4 to i8*
  %17 = bitcast i15* %_V_keep_V to i8*
  call void @fpga_fifo_push_2(i8* %16, i8* %17)
  store i15 %.fca.0.2.0.0.0.extract, i15* %3
  %18 = bitcast i15* %3 to i8*
  %19 = bitcast i15* %_V_strb_V to i8*
  call void @fpga_fifo_push_2(i8* %18, i8* %19)
  store i1 %.fca.0.3.0.0.0.extract, i1* %8
  %20 = bitcast i1* %8 to i8*
  %21 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  store i1 %.fca.0.4.0.0.0.extract, i1* %7
  %22 = bitcast i1* %7 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  store i1 %.fca.0.5.0.0.0.extract, i1* %6
  %24 = bitcast i1* %6 to i8*
  %25 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %24, i8* %25)
  store i1 %.fca.0.6.0.0.0.extract, i1* %5
  %26 = bitcast i1* %5 to i8*
  %27 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_v_frmbuf_wr_hw(i16, i16, i16, i16, i256*, i256*, i256*, i120*, i15*, i15*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back([2073600 x %"struct.ap_uint<256>"]* noalias "unpacked"="0", [2073600 x i256]* noalias nocapture readonly "unpacked"="1.0", [2073600 x %"struct.ap_uint<256>"]* noalias "unpacked"="2", [2073600 x i256]* noalias nocapture readonly "unpacked"="3.0", [2073600 x %"struct.ap_uint<256>"]* noalias "unpacked"="4", [2073600 x i256]* noalias nocapture readonly "unpacked"="5.0", %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* noalias "unpacked"="6", i120* noalias align 512 "unpacked"="7.0" %_V_data_V, i15* noalias align 512 "unpacked"="7.1" %_V_keep_V, i15* noalias align 512 "unpacked"="7.2" %_V_strb_V, i1* noalias align 512 "unpacked"="7.3" %_V_user_V, i1* noalias align 512 "unpacked"="7.4" %_V_last_V, i1* noalias align 512 "unpacked"="7.5" %_V_id_V, i1* noalias align 512 "unpacked"="7.6" %_V_dest_V) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>.18"([2073600 x %"struct.ap_uint<256>"]* %0, [2073600 x i256]* %1)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>.18"([2073600 x %"struct.ap_uint<256>"]* %2, [2073600 x i256]* %3)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<256>.18"([2073600 x %"struct.ap_uint<256>"]* %4, [2073600 x i256]* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %6, i120* align 512 %_V_data_V, i15* align 512 %_V_keep_V, i15* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  ret void
}

define void @v_frmbuf_wr_hw_stub_wrapper(i16, i16, i16, i16, i256*, i256*, i256*, i120*, i15*, i15*, i1*, i1*, i1*, i1*) #7 {
entry:
  %malloccall = tail call i8* @malloc(i64 66355200)
  %14 = bitcast i8* %malloccall to [2073600 x %"struct.ap_uint<256>"]*
  %malloccall1 = tail call i8* @malloc(i64 66355200)
  %15 = bitcast i8* %malloccall1 to [2073600 x %"struct.ap_uint<256>"]*
  %malloccall2 = tail call i8* @malloc(i64 66355200)
  %16 = bitcast i8* %malloccall2 to [2073600 x %"struct.ap_uint<256>"]*
  %17 = alloca %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"
  %18 = bitcast i256* %4 to [2073600 x i256]*
  %19 = bitcast i256* %5 to [2073600 x i256]*
  %20 = bitcast i256* %6 to [2073600 x i256]*
  call void @copy_out([2073600 x %"struct.ap_uint<256>"]* %14, [2073600 x i256]* %18, [2073600 x %"struct.ap_uint<256>"]* %15, [2073600 x i256]* %19, [2073600 x %"struct.ap_uint<256>"]* %16, [2073600 x i256]* %20, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %17, i120* %7, i15* %8, i15* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  %21 = bitcast [2073600 x %"struct.ap_uint<256>"]* %14 to %"struct.ap_uint<256>"*
  %22 = bitcast [2073600 x %"struct.ap_uint<256>"]* %15 to %"struct.ap_uint<256>"*
  %23 = bitcast [2073600 x %"struct.ap_uint<256>"]* %16 to %"struct.ap_uint<256>"*
  call void @v_frmbuf_wr_hw_stub(i16 %0, i16 %1, i16 %2, i16 %3, %"struct.ap_uint<256>"* %21, %"struct.ap_uint<256>"* %22, %"struct.ap_uint<256>"* %23, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %17)
  call void @copy_in([2073600 x %"struct.ap_uint<256>"]* %14, [2073600 x i256]* %18, [2073600 x %"struct.ap_uint<256>"]* %15, [2073600 x i256]* %19, [2073600 x %"struct.ap_uint<256>"]* %16, [2073600 x i256]* %20, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"* %17, i120* %7, i15* %8, i15* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  ret void
}

declare void @v_frmbuf_wr_hw_stub(i16, i16, i16, i16, %"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*, %"class.hls::stream<hls::axis<ap_uint<120>, 1, 1, 1, '8', false>, 0>"*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}

source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }
%sigaction = type { void (i32)*, i32, void ()*, %_TYPEDEF_sigset_t }
%_TYPEDEF_sigset_t = type { [1 x i32] }
%sched_param = type { i32 }
%timespec = type { i64, i32 }

@global_var_3ff8 = local_unnamed_addr global i64 0
@global_var_203b = constant i64 -4985143114530044216
@global_var_40f8 = local_unnamed_addr global i64* @global_var_203b
@global_var_2004 = constant [28 x i8] c"(eU8Z7HoOn<E6C(`(r&GU'RP`e1\00"
@global_var_2020 = constant [27 x i8] c"84W[WiI.GbI=['S+oc]piSCN(f\00"
@global_var_40e8 = local_unnamed_addr global [2 x i8*] [i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_var_2004, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_var_2020, i32 0, i32 0)]
@global_var_2048 = constant [9 x i8] c"Failed !\00"
@global_var_3dd8 = global i64 4768
@global_var_3de0 = global i64 4704
@0 = external global i32
@global_var_4100 = global %_IO_FILE* null
@global_var_4108 = local_unnamed_addr global i8 0
@global_var_410c = external local_unnamed_addr global i128
@global_var_410d = external global i32

define i64 @function_1000() local_unnamed_addr {
dec_label_pc_1000:
  %rax.0.reg2mem = alloca i64, !insn.addr !0
  %0 = load i64, i64* inttoptr (i64 16360 to i64*), align 8, !insn.addr !1
  %1 = icmp eq i64 %0, 0, !insn.addr !2
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !3
  br i1 %1, label %dec_label_pc_1012, label %dec_label_pc_1010, !insn.addr !3

dec_label_pc_1010:                                ; preds = %dec_label_pc_1000
  call void @__gmon_start__(), !insn.addr !4
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !4
  br label %dec_label_pc_1012, !insn.addr !4

dec_label_pc_1012:                                ; preds = %dec_label_pc_1010, %dec_label_pc_1000
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !5
}

define i32 @function_1030(i32 %sig) local_unnamed_addr {
dec_label_pc_1030:
  %0 = call i32 @raise(i32 %sig), !insn.addr !6
  ret i32 %0, !insn.addr !6
}

define i32 @function_1040(i64* %addr, i32 %len) local_unnamed_addr {
dec_label_pc_1040:
  %0 = call i32 @mlock(i64* %addr, i32 %len), !insn.addr !7
  ret i32 %0, !insn.addr !7
}

define i32 @function_1050(i8* %s1, i8* %s2, i32 %n) local_unnamed_addr {
dec_label_pc_1050:
  %0 = call i32 @strncmp(i8* %s1, i8* %s2, i32 %n), !insn.addr !8
  ret i32 %0, !insn.addr !8
}

define i32 @function_1060(i8* %s) local_unnamed_addr {
dec_label_pc_1060:
  %0 = call i32 @puts(i8* %s), !insn.addr !9
  ret i32 %0, !insn.addr !9
}

define i32 @function_1070(i32 %sig, %sigaction* %act, %sigaction* %oact) local_unnamed_addr {
dec_label_pc_1070:
  %0 = call i32 @sigaction(i32 %sig, %sigaction* %act, %sigaction* %oact), !insn.addr !10
  ret i32 %0, !insn.addr !10
}

define i32 @function_1080(i8* %s) local_unnamed_addr {
dec_label_pc_1080:
  %0 = call i32 @strlen(i8* %s), !insn.addr !11
  ret i32 %0, !insn.addr !11
}

define i32 @function_1090(i32 %pid, i32 %policy, %sched_param* %param) local_unnamed_addr {
dec_label_pc_1090:
  %0 = call i32 @sched_setscheduler(i32 %pid, i32 %policy, %sched_param* %param), !insn.addr !12
  ret i32 %0, !insn.addr !12
}

define i64* @function_10a0(i64* %s, i32 %c, i32 %n) local_unnamed_addr {
dec_label_pc_10a0:
  %0 = call i64* @memset(i64* %s, i32 %c, i32 %n), !insn.addr !13
  ret i64* %0, !insn.addr !13
}

define i8* @function_10b0(i8* %dest, i8* %src, i32 %n) local_unnamed_addr {
dec_label_pc_10b0:
  %0 = call i8* @strncat(i8* %dest, i8* %src, i32 %n), !insn.addr !14
  ret i8* %0, !insn.addr !14
}

define i32 @function_10c0(i32 %fd, i32 %offset, i32 %len, i32 %advise) local_unnamed_addr {
dec_label_pc_10c0:
  %0 = call i32 @posix_fadvise(i32 %fd, i32 %offset, i32 %len, i32 %advise), !insn.addr !15
  ret i32 %0, !insn.addr !15
}

define i8* @function_10d0(i8* %s, i32 %n, %_IO_FILE* %stream) local_unnamed_addr {
dec_label_pc_10d0:
  %0 = call i8* @fgets(i8* %s, i32 %n, %_IO_FILE* %stream), !insn.addr !16
  ret i8* %0, !insn.addr !16
}

define i32 @function_10e0(i8* %path, [1 x i8*] %argv, [1 x i8*] %envp) local_unnamed_addr {
dec_label_pc_10e0:
  %0 = call i32 @execve(i8* %path, [1 x i8*] %argv, [1 x i8*] %envp), !insn.addr !17
  ret i32 %0, !insn.addr !17
}

define i64 @function_10f0(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5) local_unnamed_addr {
dec_label_pc_10f0:
  %0 = call i64 @add_key(), !insn.addr !18
  ret i64 %0, !insn.addr !18
}

define i64 @function_1100(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_1100:
  %0 = call i64 @request_key(), !insn.addr !19
  ret i64 %0, !insn.addr !19
}

define i32 @function_1110(i32 %ver, i8* %path, i32 %mode, i32* %dev) local_unnamed_addr {
dec_label_pc_1110:
  %0 = call i32 @__xmknod(i32 %ver, i8* %path, i32 %mode, i32* %dev), !insn.addr !20
  ret i32 %0, !insn.addr !20
}

define i64 @function_1120(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_1120:
  %0 = call i64 @capget(), !insn.addr !21
  ret i64 %0, !insn.addr !21
}

define i32 @function_1130(i32 %fd, i8* %name, i32 %mask) local_unnamed_addr {
dec_label_pc_1130:
  %0 = call i32 @inotify_add_watch(i32 %fd, i8* %name, i32 %mask), !insn.addr !22
  ret i32 %0, !insn.addr !22
}

define i32 @function_1140(i32 %clock_id, %timespec* %tp) local_unnamed_addr {
dec_label_pc_1140:
  %0 = call i32 @clock_settime(i32 %clock_id, %timespec* %tp), !insn.addr !23
  ret i32 %0, !insn.addr !23
}

define i32 @function_1150(i64 %request, ...) local_unnamed_addr {
dec_label_pc_1150:
  %0 = call i32 (i64, ...) @ptrace(i64 %request), !insn.addr !24
  ret i32 %0, !insn.addr !24
}

define i32 @function_1160(i32 %pid, i32* %stat_loc, i32 %options) local_unnamed_addr {
dec_label_pc_1160:
  %0 = call i32 @waitpid(i32 %pid, i32* %stat_loc, i32 %options), !insn.addr !25
  ret i32 %0, !insn.addr !25
}

define i32 @function_1170(i8* %name, i32 %type) local_unnamed_addr {
dec_label_pc_1170:
  %0 = call i32 @access(i8* %name, i32 %type), !insn.addr !26
  ret i32 %0, !insn.addr !26
}

define i32 @function_1180(i32 %pid, %sched_param* %param) local_unnamed_addr {
dec_label_pc_1180:
  %0 = call i32 @sched_setparam(i32 %pid, %sched_param* %param), !insn.addr !27
  ret i32 %0, !insn.addr !27
}

define i32 @function_1190(i32 %howto) local_unnamed_addr {
dec_label_pc_1190:
  %0 = call i32 @reboot(i32 %howto), !insn.addr !28
  ret i32 %0, !insn.addr !28
}

define i32 @function_11a0() local_unnamed_addr {
dec_label_pc_11a0:
  %0 = call i32 @fork(), !insn.addr !29
  ret i32 %0, !insn.addr !29
}

define void @function_11b0(i64* %d) local_unnamed_addr {
dec_label_pc_11b0:
  call void @__cxa_finalize(i64* %d), !insn.addr !30
  ret void, !insn.addr !30
}

define i64 @entry_point(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_11c0:
  %stack_var_8 = alloca i64, align 8
  %0 = trunc i64 %arg4 to i32, !insn.addr !31
  %1 = bitcast i64* %stack_var_8 to i8**, !insn.addr !31
  %2 = inttoptr i64 %arg3 to void ()*, !insn.addr !31
  %3 = call i32 @__libc_start_main(i64 7158, i32 %0, i8** nonnull %1, void ()* inttoptr (i64 7216 to void ()*), void ()* inttoptr (i64 7312 to void ()*), void ()* %2), !insn.addr !31
  %4 = call i64 @__asm_hlt(), !insn.addr !32
  unreachable, !insn.addr !32
}

define i64 @function_11f0() local_unnamed_addr {
dec_label_pc_11f0:
  ret i64 ptrtoint (%_IO_FILE** @global_var_4100 to i64), !insn.addr !33
}

define i64 @function_1220() local_unnamed_addr {
dec_label_pc_1220:
  ret i64 0, !insn.addr !34
}

define i64 @function_1260() local_unnamed_addr {
dec_label_pc_1260:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = load i8, i8* @global_var_4108, align 1, !insn.addr !35
  %3 = icmp eq i8 %2, 0, !insn.addr !35
  %4 = icmp eq i1 %3, false, !insn.addr !36
  br i1 %4, label %dec_label_pc_1298, label %dec_label_pc_1269, !insn.addr !36

dec_label_pc_1269:                                ; preds = %dec_label_pc_1260
  %5 = load i64, i64* @global_var_3ff8, align 8, !insn.addr !37
  %6 = icmp eq i64 %5, 0, !insn.addr !37
  br i1 %6, label %dec_label_pc_1283, label %dec_label_pc_1277, !insn.addr !38

dec_label_pc_1277:                                ; preds = %dec_label_pc_1269
  %7 = load i64, i64* inttoptr (i64 16608 to i64*), align 32, !insn.addr !39
  %8 = inttoptr i64 %7 to i64*, !insn.addr !40
  call void @__cxa_finalize(i64* %8), !insn.addr !40
  br label %dec_label_pc_1283, !insn.addr !40

dec_label_pc_1283:                                ; preds = %dec_label_pc_1277, %dec_label_pc_1269
  %9 = call i64 @function_11f0(), !insn.addr !41
  store i8 1, i8* @global_var_4108, align 1, !insn.addr !42
  ret i64 %9, !insn.addr !43

dec_label_pc_1298:                                ; preds = %dec_label_pc_1260
  ret i64 %1, !insn.addr !44

; uselistorder directives
  uselistorder i8* @global_var_4108, { 1, 0 }
}

define i64 @function_12a0() local_unnamed_addr {
dec_label_pc_12a0:
  %0 = call i64 @function_1220(), !insn.addr !45
  ret i64 %0, !insn.addr !45
}

define i64 @function_12a5(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_12a5:
  %0 = trunc i64 %arg1 to i32, !insn.addr !46
  %1 = trunc i64 %arg2 to i32, !insn.addr !47
  %sext = mul i32 %0, 16777216
  %2 = ashr exact i32 %sext, 24, !insn.addr !48
  %sext1 = mul i32 %1, 16777216
  %3 = ashr exact i32 %sext1, 24, !insn.addr !49
  %4 = add nsw i32 %2, -64, !insn.addr !48
  %5 = add nsw i32 %4, %3, !insn.addr !50
  %6 = ashr i32 %5, 31, !insn.addr !51
  %7 = zext i32 %5 to i64, !insn.addr !52
  %8 = zext i32 %6 to i64, !insn.addr !52
  %9 = mul i64 %8, 4294967296, !insn.addr !52
  %10 = or i64 %9, %7, !insn.addr !52
  %11 = srem i64 %10, 95, !insn.addr !52
  %12 = add nsw i64 %11, 32, !insn.addr !53
  %13 = and i64 %12, 4294967295, !insn.addr !53
  ret i64 %13, !insn.addr !54
}

define i64 @function_12ef(i64 %arg1, i64* %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_12ef:
  %stack_var_-28.0.lcssa.reg2mem = alloca i64, !insn.addr !55
  %stack_var_-28.03.reg2mem = alloca i32, !insn.addr !55
  %0 = trunc i64 %arg4 to i32, !insn.addr !56
  %1 = icmp sgt i32 %0, 0, !insn.addr !57
  store i32 0, i32* %stack_var_-28.03.reg2mem, !insn.addr !57
  store i64 0, i64* %stack_var_-28.0.lcssa.reg2mem, !insn.addr !57
  br i1 %1, label %dec_label_pc_131e, label %dec_label_pc_1366, !insn.addr !57

dec_label_pc_131e:                                ; preds = %dec_label_pc_12ef, %dec_label_pc_1350
  %stack_var_-28.03.reload = load i32, i32* %stack_var_-28.03.reg2mem
  %2 = call i32 (i64, ...) @ptrace(i64 5), !insn.addr !58
  %3 = icmp slt i32 %2, 0, !insn.addr !59
  br i1 %3, label %dec_label_pc_1350, label %dec_label_pc_1341, !insn.addr !60

dec_label_pc_1341:                                ; preds = %dec_label_pc_131e
  %4 = load i32, i32* inttoptr (i64 16652 to i32*), align 4, !insn.addr !61
  %5 = add i32 %4, 1, !insn.addr !62
  store i32 %5, i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !63
  br label %dec_label_pc_1350, !insn.addr !63

dec_label_pc_1350:                                ; preds = %dec_label_pc_1341, %dec_label_pc_131e
  %6 = add i32 %stack_var_-28.03.reload, 4, !insn.addr !64
  %7 = icmp slt i32 %6, %0, !insn.addr !57
  store i32 %6, i32* %stack_var_-28.03.reg2mem, !insn.addr !57
  br i1 %7, label %dec_label_pc_131e, label %dec_label_pc_135e.dec_label_pc_1366_crit_edge, !insn.addr !57

dec_label_pc_135e.dec_label_pc_1366_crit_edge:    ; preds = %dec_label_pc_1350
  %phitmp = zext i32 %6 to i64
  store i64 %phitmp, i64* %stack_var_-28.0.lcssa.reg2mem
  br label %dec_label_pc_1366

dec_label_pc_1366:                                ; preds = %dec_label_pc_135e.dec_label_pc_1366_crit_edge, %dec_label_pc_12ef
  %stack_var_-28.0.lcssa.reload = load i64, i64* %stack_var_-28.0.lcssa.reg2mem
  ret i64 %stack_var_-28.0.lcssa.reload, !insn.addr !65

; uselistorder directives
  uselistorder i32 %6, { 1, 0, 2 }
  uselistorder i32 %0, { 1, 0 }
  uselistorder i32* %stack_var_-28.03.reg2mem, { 2, 0, 1 }
  uselistorder i64* %stack_var_-28.0.lcssa.reg2mem, { 0, 2, 1 }
  uselistorder label %dec_label_pc_131e, { 1, 0 }
}

define i64 @function_136a(i64 %arg1) local_unnamed_addr {
dec_label_pc_136a:
  %0 = alloca i64
  %stack_var_-208.28.reg2mem = alloca i32, !insn.addr !66
  %stack_var_-208.0.reg2mem = alloca i32, !insn.addr !66
  %stack_var_-208.19.reg2mem = alloca i32, !insn.addr !66
  %1 = load i64, i64* %0
  %stack_var_-104 = alloca i64, align 8
  %stack_var_-32 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %2 = trunc i64 %arg1 to i32, !insn.addr !67
  %3 = call i32 @waitpid(i32 %2, i32* nonnull %stack_var_-32, i32 0), !insn.addr !68
  %4 = call i32 (i64, ...) @ptrace(i64 16896), !insn.addr !69
  %5 = icmp slt i32 %4, 0, !insn.addr !70
  br i1 %5, label %dec_label_pc_13c9, label %dec_label_pc_13ba, !insn.addr !71

dec_label_pc_13ba:                                ; preds = %dec_label_pc_136a
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !72
  br label %dec_label_pc_13c9, !insn.addr !72

dec_label_pc_13c9:                                ; preds = %dec_label_pc_13ba, %dec_label_pc_136a
  %6 = load %_IO_FILE*, %_IO_FILE** @global_var_4100, align 8, !insn.addr !73
  %7 = bitcast i64* %stack_var_-104 to i8*, !insn.addr !74
  %8 = call i8* @fgets(i8* nonnull %7, i32 64, %_IO_FILE* %6), !insn.addr !74
  %9 = call i32 @strlen(i8* nonnull %7), !insn.addr !75
  %10 = icmp sgt i32 %9, 63, !insn.addr !76
  br i1 %10, label %dec_label_pc_1403, label %dec_label_pc_13f6, !insn.addr !76

dec_label_pc_13f6:                                ; preds = %dec_label_pc_13c9
  %11 = ptrtoint i64* %stack_var_-8 to i64, !insn.addr !77
  %12 = add i32 %9, -1, !insn.addr !78
  %13 = sext i32 %12 to i64, !insn.addr !79
  %14 = add i64 %11, -96, !insn.addr !80
  %15 = add i64 %14, %13, !insn.addr !80
  %16 = inttoptr i64 %15 to i8*, !insn.addr !80
  store i8 0, i8* %16, align 1, !insn.addr !80
  br label %dec_label_pc_1403, !insn.addr !80

dec_label_pc_1403:                                ; preds = %dec_label_pc_13f6, %dec_label_pc_13c9
  %17 = call i32 (i64, ...) @ptrace(i64 24), !insn.addr !81
  %18 = icmp slt i32 %17, 0, !insn.addr !82
  br i1 %18, label %dec_label_pc_15f3.preheader, label %dec_label_pc_1435, !insn.addr !83

dec_label_pc_1435:                                ; preds = %dec_label_pc_1403
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !84
  br label %dec_label_pc_15f3.preheader, !insn.addr !85

dec_label_pc_15f3.preheader:                      ; preds = %dec_label_pc_1403, %dec_label_pc_1435
  %sext = mul i64 %arg1, 4294967296
  %19 = ashr exact i64 %sext, 32, !insn.addr !67
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  br label %dec_label_pc_1449

dec_label_pc_1449:                                ; preds = %dec_label_pc_15f3.preheader, %dec_label_pc_15f3.backedge
  %stack_var_-208.19.reload = load i32, i32* %stack_var_-208.19.reg2mem
  %22 = call i32 @waitpid(i32 %20, i32* nonnull %stack_var_-32, i32 0), !insn.addr !86
  %23 = call i32 (i64, ...) @ptrace(i64 12), !insn.addr !87
  %24 = icmp slt i32 %23, 0, !insn.addr !88
  br i1 %24, label %dec_label_pc_149c, label %dec_label_pc_148d, !insn.addr !89

dec_label_pc_148d:                                ; preds = %dec_label_pc_1449
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !90
  br label %dec_label_pc_149c, !insn.addr !90

dec_label_pc_149c:                                ; preds = %dec_label_pc_148d, %dec_label_pc_1449
  %25 = icmp eq i32 %stack_var_-208.19.reload, 59, !insn.addr !91
  %26 = icmp eq i1 %25, false, !insn.addr !92
  br i1 %26, label %dec_label_pc_151b, label %dec_label_pc_14ae, !insn.addr !92

dec_label_pc_14ae:                                ; preds = %dec_label_pc_149c
  %27 = call i64 @function_12ef(i64 %21, i64* nonnull %stack_var_-104, i64 %1, i64 64), !insn.addr !93
  %28 = call i32 (i64, ...) @ptrace(i64 13), !insn.addr !94
  %29 = icmp slt i32 %28, 0, !insn.addr !95
  store i32 1313167187, i32* %stack_var_-208.0.reg2mem, !insn.addr !96
  br i1 %29, label %dec_label_pc_1570, label %dec_label_pc_150a, !insn.addr !96

dec_label_pc_150a:                                ; preds = %dec_label_pc_14ae
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !97
  store i32 1313167187, i32* %stack_var_-208.0.reg2mem, !insn.addr !98
  br label %dec_label_pc_1570, !insn.addr !98

dec_label_pc_151b:                                ; preds = %dec_label_pc_149c
  %30 = icmp eq i32 %stack_var_-208.19.reload, 248, !insn.addr !99
  %31 = icmp eq i1 %30, false, !insn.addr !100
  store i32 %stack_var_-208.19.reload, i32* %stack_var_-208.0.reg2mem, !insn.addr !100
  br i1 %31, label %dec_label_pc_1570, label %dec_label_pc_1525, !insn.addr !100

dec_label_pc_1525:                                ; preds = %dec_label_pc_151b
  %32 = call i32 (i64, ...) @ptrace(i64 13), !insn.addr !101
  %33 = icmp slt i32 %32, 0, !insn.addr !102
  store i32 1313167187, i32* %stack_var_-208.0.reg2mem, !insn.addr !103
  br i1 %33, label %dec_label_pc_1570, label %dec_label_pc_1561, !insn.addr !103

dec_label_pc_1561:                                ; preds = %dec_label_pc_1525
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !104
  store i32 1313167187, i32* %stack_var_-208.0.reg2mem, !insn.addr !104
  br label %dec_label_pc_1570, !insn.addr !104

dec_label_pc_1570:                                ; preds = %dec_label_pc_1561, %dec_label_pc_1525, %dec_label_pc_151b, %dec_label_pc_150a, %dec_label_pc_14ae
  %stack_var_-208.0.reload = load i32, i32* %stack_var_-208.0.reg2mem
  %34 = call i32 (i64, ...) @ptrace(i64 24), !insn.addr !105
  %35 = icmp slt i32 %34, 0, !insn.addr !106
  br i1 %35, label %dec_label_pc_15a5, label %dec_label_pc_1596, !insn.addr !107

dec_label_pc_1596:                                ; preds = %dec_label_pc_1570
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !108
  br label %dec_label_pc_15a5, !insn.addr !108

dec_label_pc_15a5:                                ; preds = %dec_label_pc_1596, %dec_label_pc_1570
  %36 = call i32 @waitpid(i32 %20, i32* nonnull %stack_var_-32, i32 0), !insn.addr !109
  %37 = call i32 (i64, ...) @ptrace(i64 24), !insn.addr !110
  %38 = icmp slt i32 %37, 0, !insn.addr !111
  br i1 %38, label %dec_label_pc_15f3.backedge, label %dec_label_pc_15e4, !insn.addr !112

dec_label_pc_15f3.backedge:                       ; preds = %dec_label_pc_15a5, %dec_label_pc_15e4
  %39 = icmp eq i32 %stack_var_-208.19.reload, 248, !insn.addr !113
  %40 = icmp eq i1 %39, false, !insn.addr !114
  store i32 %stack_var_-208.0.reload, i32* %stack_var_-208.19.reg2mem, !insn.addr !114
  br i1 %40, label %dec_label_pc_1449, label %dec_label_pc_17dc.preheader, !insn.addr !114

dec_label_pc_15e4:                                ; preds = %dec_label_pc_15a5
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !115
  br label %dec_label_pc_15f3.backedge, !insn.addr !115

dec_label_pc_17dc.preheader:                      ; preds = %dec_label_pc_15f3.backedge
  %41 = icmp eq i32 %stack_var_-208.19.reload, 249, !insn.addr !116
  %42 = icmp eq i1 %41, false, !insn.addr !117
  store i32 %stack_var_-208.0.reload, i32* %stack_var_-208.28.reg2mem, !insn.addr !117
  br i1 %42, label %dec_label_pc_1606, label %dec_label_pc_17f0.lr.ph, !insn.addr !117

dec_label_pc_1606:                                ; preds = %dec_label_pc_17dc.preheader, %dec_label_pc_17dc.backedge
  %stack_var_-208.28.reload = load i32, i32* %stack_var_-208.28.reg2mem
  %43 = call i32 @waitpid(i32 %20, i32* nonnull %stack_var_-32, i32 0), !insn.addr !118
  %44 = call i32 (i64, ...) @ptrace(i64 12), !insn.addr !119
  %45 = icmp slt i32 %44, 0, !insn.addr !120
  br i1 %45, label %dec_label_pc_1659, label %dec_label_pc_164a, !insn.addr !121

dec_label_pc_164a:                                ; preds = %dec_label_pc_1606
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !122
  br label %dec_label_pc_1659, !insn.addr !122

dec_label_pc_1659:                                ; preds = %dec_label_pc_164a, %dec_label_pc_1606
  %46 = call i32 (i64, ...) @ptrace(i64 13), !insn.addr !123
  %47 = icmp slt i32 %46, 0, !insn.addr !124
  br i1 %47, label %dec_label_pc_16af, label %dec_label_pc_16a0, !insn.addr !125

dec_label_pc_16a0:                                ; preds = %dec_label_pc_1659
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !126
  br label %dec_label_pc_16af, !insn.addr !126

dec_label_pc_16af:                                ; preds = %dec_label_pc_16a0, %dec_label_pc_1659
  %48 = icmp eq i32 %stack_var_-208.28.reload, 249
  br i1 %48, label %dec_label_pc_17a7, label %dec_label_pc_16bd, !insn.addr !127

dec_label_pc_16bd:                                ; preds = %dec_label_pc_16af
  %49 = call i32 (i64, ...) @ptrace(i64 7), !insn.addr !128
  %50 = icmp slt i32 %49, 0, !insn.addr !129
  br i1 %50, label %dec_label_pc_1740, label %dec_label_pc_1731, !insn.addr !130

dec_label_pc_1731:                                ; preds = %dec_label_pc_16bd
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !131
  br label %dec_label_pc_1740, !insn.addr !131

dec_label_pc_1740:                                ; preds = %dec_label_pc_1731, %dec_label_pc_16bd
  %51 = call i32 @waitpid(i32 %20, i32* nonnull %stack_var_-32, i32 0), !insn.addr !132
  %52 = call i32 (i64, ...) @ptrace(i64 7), !insn.addr !133
  %53 = icmp slt i32 %52, 0, !insn.addr !134
  br i1 %53, label %dec_label_pc_178e, label %dec_label_pc_177f, !insn.addr !135

dec_label_pc_177f:                                ; preds = %dec_label_pc_1740
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !136
  br label %dec_label_pc_178e, !insn.addr !136

dec_label_pc_178e:                                ; preds = %dec_label_pc_177f, %dec_label_pc_1740
  %54 = call i32 @waitpid(i32 %20, i32* nonnull %stack_var_-32, i32 0), !insn.addr !137
  br label %dec_label_pc_17a7, !insn.addr !137

dec_label_pc_17a7:                                ; preds = %dec_label_pc_178e, %dec_label_pc_16af
  %55 = call i32 (i64, ...) @ptrace(i64 31), !insn.addr !138
  %56 = icmp slt i32 %55, 0, !insn.addr !139
  br i1 %56, label %dec_label_pc_17dc.backedge, label %dec_label_pc_17cd, !insn.addr !140

dec_label_pc_17dc.backedge:                       ; preds = %dec_label_pc_17a7, %dec_label_pc_17cd
  %57 = icmp eq i1 %48, false, !insn.addr !117
  store i32 1330797128, i32* %stack_var_-208.28.reg2mem, !insn.addr !117
  br i1 %57, label %dec_label_pc_1606, label %dec_label_pc_17f0.lr.ph, !insn.addr !117

dec_label_pc_17cd:                                ; preds = %dec_label_pc_17a7
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !141
  br label %dec_label_pc_17dc.backedge, !insn.addr !141

dec_label_pc_17f0.lr.ph:                          ; preds = %dec_label_pc_17dc.backedge, %dec_label_pc_17dc.preheader
  %58 = call i32 @waitpid(i32 %20, i32* nonnull %stack_var_-32, i32 0), !insn.addr !142
  %59 = load i32, i32* %stack_var_-32, align 4, !insn.addr !143
  %60 = urem i32 %59, 128, !insn.addr !144
  %61 = icmp eq i32 %60, 0, !insn.addr !145
  %62 = icmp eq i1 %61, false, !insn.addr !146
  br i1 %62, label %dec_label_pc_1819, label %dec_label_pc_1876, !insn.addr !146

dec_label_pc_1819:                                ; preds = %dec_label_pc_17f0.lr.ph, %dec_label_pc_184e
  %63 = call i32 (i64, ...) @ptrace(i64 7), !insn.addr !147
  %64 = icmp slt i32 %63, 0, !insn.addr !148
  br i1 %64, label %dec_label_pc_184e, label %dec_label_pc_183f, !insn.addr !149

dec_label_pc_183f:                                ; preds = %dec_label_pc_1819
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !150
  br label %dec_label_pc_184e, !insn.addr !150

dec_label_pc_184e:                                ; preds = %dec_label_pc_183f, %dec_label_pc_1819
  %65 = call i32 @waitpid(i32 %20, i32* nonnull %stack_var_-32, i32 0), !insn.addr !151
  %66 = call i32 @waitpid(i32 %20, i32* nonnull %stack_var_-32, i32 0), !insn.addr !142
  %67 = load i32, i32* %stack_var_-32, align 4, !insn.addr !143
  %68 = urem i32 %67, 128, !insn.addr !144
  %69 = icmp eq i32 %68, 0, !insn.addr !145
  %70 = icmp eq i1 %69, false, !insn.addr !146
  br i1 %70, label %dec_label_pc_1819, label %dec_label_pc_1876, !insn.addr !146

dec_label_pc_1876:                                ; preds = %dec_label_pc_184e, %dec_label_pc_17f0.lr.ph
  ret i64 0, !insn.addr !152

; uselistorder directives
  uselistorder i32 %stack_var_-208.19.reload, { 4, 3, 0, 2, 1 }
  uselistorder i32 %20, { 1, 2, 0, 5, 4, 3, 6, 7 }
  uselistorder i32* %stack_var_-32, { 2, 9, 10, 0, 1, 8, 7, 6, 5, 4, 3 }
  uselistorder i32* %stack_var_-208.19.reg2mem, { 1, 0 }
  uselistorder i32* %stack_var_-208.0.reg2mem, { 0, 3, 4, 5, 1, 2 }
  uselistorder i32* %stack_var_-208.28.reg2mem, { 2, 0, 1 }
  uselistorder i32 249, { 1, 0 }
  uselistorder i32 248, { 1, 0 }
  uselistorder i32 1313167187, { 2, 3, 0, 1 }
  uselistorder i8 0, { 1, 2, 0 }
  uselistorder %_IO_FILE** @global_var_4100, { 1, 0 }
  uselistorder i32 (i32, i32*, i32)* @waitpid, { 7, 8, 0, 6, 5, 4, 3, 2, 1, 9 }
  uselistorder label %dec_label_pc_1819, { 1, 0 }
  uselistorder label %dec_label_pc_17dc.backedge, { 1, 0 }
  uselistorder label %dec_label_pc_1606, { 1, 0 }
  uselistorder label %dec_label_pc_15f3.backedge, { 1, 0 }
  uselistorder label %dec_label_pc_1449, { 1, 0 }
  uselistorder label %dec_label_pc_15f3.preheader, { 1, 0 }
}

define i64 @function_187a(i64 %arg1) local_unnamed_addr {
dec_label_pc_187a:
  %0 = alloca i64
  %r10 = alloca i64, align 8
  %1 = load i64, i64* %0
  %2 = trunc i64 %arg1 to i8, !insn.addr !153
  %3 = add i8 %2, 32, !insn.addr !154
  %4 = bitcast i64* %r10 to i32*
  %sext = mul i64 %1, 4294967296
  %5 = ashr exact i64 %sext, 32, !insn.addr !155
  %6 = add i64 %1, 4, !insn.addr !156
  %7 = add i64 %6, %5, !insn.addr !156
  %8 = inttoptr i64 %7 to i8*, !insn.addr !156
  store i8 %3, i8* %8, align 1, !insn.addr !156
  %9 = load i32, i32* %4, align 8, !insn.addr !157
  %10 = add i32 %9, 1, !insn.addr !158
  %11 = inttoptr i64 %1 to i32*, !insn.addr !159
  store i32 %10, i32* %11, align 4, !insn.addr !159
  ret i64 %1, !insn.addr !160

; uselistorder directives
  uselistorder i64 %1, { 2, 1, 0, 3 }
}

define i64 @function_18a3() local_unnamed_addr {
dec_label_pc_18a3:
  %indvars.iv.reg2mem = alloca i64, !insn.addr !161
  %storemerge24.reg2mem = alloca i32, !insn.addr !161
  %stack_var_-548 = alloca i64, align 8
  %stack_var_-428 = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-408 = alloca i64, align 8
  %stack_var_-344 = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-474 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  store i64 -17591, i64* %stack_var_-474, align 8, !insn.addr !162
  %0 = call i64* @memset(i64* nonnull %stack_var_-184, i32 0, i32 152), !insn.addr !163
  %1 = ptrtoint i64* %stack_var_-474 to i64, !insn.addr !164
  store i64 %1, i64* %stack_var_-184, align 8, !insn.addr !164
  %2 = bitcast i64* %stack_var_-184 to %sigaction*, !insn.addr !165
  %3 = bitcast i64* %stack_var_-344 to %sigaction*, !insn.addr !165
  store i32 1, i32* %storemerge24.reg2mem
  br label %dec_label_pc_1940

dec_label_pc_1940:                                ; preds = %dec_label_pc_1940, %dec_label_pc_18a3
  %storemerge24.reload = load i32, i32* %storemerge24.reg2mem
  %4 = call i32 @sigaction(i32 %storemerge24.reload, %sigaction* nonnull %2, %sigaction* nonnull %3), !insn.addr !165
  %5 = add nuw nsw i32 %storemerge24.reload, 1, !insn.addr !166
  %exitcond5 = icmp eq i32 %5, 65
  store i32 %5, i32* %storemerge24.reg2mem, !insn.addr !167
  br i1 %exitcond5, label %dec_label_pc_1965, label %dec_label_pc_1940, !insn.addr !167

dec_label_pc_1965:                                ; preds = %dec_label_pc_1940
  %6 = call i32 (i64, ...) @ptrace(i64 0), !insn.addr !168
  %7 = icmp slt i32 %6, 0, !insn.addr !169
  br i1 %7, label %dec_label_pc_1997, label %dec_label_pc_1988, !insn.addr !170

dec_label_pc_1988:                                ; preds = %dec_label_pc_1965
  store i32 ptrtoint (i32* @global_var_410d to i32), i32* bitcast (i128* @global_var_410c to i32*), align 8, !insn.addr !171
  br label %dec_label_pc_1997, !insn.addr !171

dec_label_pc_1997:                                ; preds = %dec_label_pc_1988, %dec_label_pc_1965
  %8 = call i32 @raise(i32 19), !insn.addr !172
  %9 = bitcast i64* %stack_var_-408 to i8*, !insn.addr !173
  %10 = call i32 @execve(i8* nonnull %9, [1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer), !insn.addr !173
  %11 = call i64 @function_10f0(i64 0, i64 0, i64 0, i64 0, i64 0), !insn.addr !174
  %12 = bitcast i64* %stack_var_-424 to %timespec*, !insn.addr !175
  %13 = call i32 @clock_settime(i32 0, %timespec* nonnull %12), !insn.addr !175
  %14 = call i32 @raise(i32 16), !insn.addr !176
  %15 = call i32 @inotify_add_watch(i32 0, i8* nonnull %9, i32 0), !insn.addr !177
  %16 = call i32 @raise(i32 16), !insn.addr !178
  %17 = call i32 @access(i8* nonnull %9, i32 0), !insn.addr !179
  %18 = call i32 @raise(i32 16), !insn.addr !180
  %19 = call i32 @reboot(i32 0), !insn.addr !181
  %20 = call i32 @raise(i32 16), !insn.addr !182
  %21 = call i32 @posix_fadvise(i32 0, i32 0, i32 0, i32 0), !insn.addr !183
  %22 = call i32 @raise(i32 16), !insn.addr !184
  %23 = call i64 @function_1ca0(i64* nonnull %stack_var_-408, i64 0, i64 0), !insn.addr !185
  %24 = call i32 @raise(i32 16), !insn.addr !186
  %25 = call i32 @mlock(i64* nonnull %stack_var_-408, i32 0), !insn.addr !187
  %26 = call i32 @raise(i32 16), !insn.addr !188
  %27 = bitcast i64* %stack_var_-428 to %sched_param*, !insn.addr !189
  %28 = call i32 @sched_setparam(i32 0, %sched_param* nonnull %27), !insn.addr !189
  %29 = call i32 @raise(i32 16), !insn.addr !190
  %30 = call i64 @function_1120(i64 0, i64 0), !insn.addr !191
  %31 = call i32 @raise(i32 16), !insn.addr !192
  %32 = call i32 @sched_setscheduler(i32 0, i32 0, %sched_param* nonnull %27), !insn.addr !193
  %33 = call i32 @raise(i32 16), !insn.addr !194
  %34 = call i64 @function_1100(i64 0, i64 0, i64 0, i64 0), !insn.addr !195
  %35 = call i32 @strlen(i8* nonnull %9), !insn.addr !196
  %36 = bitcast i64* %stack_var_-548 to i8*, !insn.addr !197
  %37 = call i8* @strncat(i8* nonnull %36, i8* nonnull %9, i32 %35), !insn.addr !197
  %38 = icmp sgt i32 %35, 0, !insn.addr !198
  br i1 %38, label %dec_label_pc_1b66.preheader, label %dec_label_pc_1ba8, !insn.addr !198

dec_label_pc_1b66.preheader:                      ; preds = %dec_label_pc_1997
  %39 = ptrtoint i64* %stack_var_-8 to i64, !insn.addr !199
  %wide.trip.count = zext i32 %35 to i64
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_1b66

dec_label_pc_1b66:                                ; preds = %dec_label_pc_1b66.preheader, %dec_label_pc_1b66
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %40 = add i64 %indvars.iv.reload, %39
  %41 = add i64 %40, -540, !insn.addr !200
  %42 = inttoptr i64 %41 to i8*, !insn.addr !200
  %43 = load i8, i8* %42, align 1, !insn.addr !200
  %44 = add i64 %40, -400, !insn.addr !201
  %45 = inttoptr i64 %44 to i8*, !insn.addr !201
  %46 = load i8, i8* %45, align 1, !insn.addr !201
  %47 = sext i8 %43 to i64, !insn.addr !202
  %48 = and i64 %47, 4294967295, !insn.addr !202
  %49 = sext i8 %46 to i64, !insn.addr !203
  %50 = and i64 %49, 4294967295, !insn.addr !203
  %51 = call i64 @function_12a5(i64 %50, i64 %48), !insn.addr !204
  %52 = trunc i64 %51 to i8, !insn.addr !205
  store i8 %52, i8* %42, align 1, !insn.addr !205
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !198
  br i1 %exitcond, label %dec_label_pc_1ba8, label %dec_label_pc_1b66, !insn.addr !198

dec_label_pc_1ba8:                                ; preds = %dec_label_pc_1b66, %dec_label_pc_1997
  %53 = load i64, i64* bitcast ([2 x i8*]* @global_var_40e8 to i64*), align 8, !insn.addr !206
  %54 = inttoptr i64 %53 to i8*, !insn.addr !207
  %55 = call i32 @strncmp(i8* nonnull %36, i8* %54, i32 %35), !insn.addr !207
  %56 = icmp eq i32 %55, 0, !insn.addr !208
  %57 = icmp eq i1 %56, false, !insn.addr !209
  %58 = icmp eq i1 %57, false, !insn.addr !210
  br i1 %58, label %dec_label_pc_1bf1, label %dec_label_pc_1be5, !insn.addr !211

dec_label_pc_1be5:                                ; preds = %dec_label_pc_1ba8
  %59 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_2048, i64 0, i64 0)), !insn.addr !212
  br label %dec_label_pc_1bf1, !insn.addr !212

dec_label_pc_1bf1:                                ; preds = %dec_label_pc_1be5, %dec_label_pc_1ba8
  %60 = select i1 %57, i64 4294967295, i64 0, !insn.addr !213
  ret i64 %60, !insn.addr !214

; uselistorder directives
  uselistorder i32 %35, { 2, 0, 1, 3 }
  uselistorder i32 %storemerge24.reload, { 1, 0 }
  uselistorder i64* %stack_var_-184, { 0, 2, 1 }
  uselistorder i32* %storemerge24.reg2mem, { 1, 0, 2 }
  uselistorder i64* %indvars.iv.reg2mem, { 2, 0, 1 }
  uselistorder i32 (i8*)* @strlen, { 1, 0, 2 }
  uselistorder i32 (i32)* @raise, { 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 11 }
  uselistorder i32* bitcast (i128* @global_var_410c to i32*), { 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder i32 ptrtoint (i32* @global_var_410d to i32), { 0, 11, 6, 7, 8, 9, 10, 2, 3, 1, 4, 5, 12, 13 }
  uselistorder i32 (i64, ...)* @ptrace, { 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 15 }
  uselistorder label %dec_label_pc_1b66, { 1, 0 }
}

define i64 @function_1bf6() local_unnamed_addr {
dec_label_pc_1bf6:
  %storemerge.reg2mem = alloca i64, !insn.addr !215
  %0 = call i32 @fork(), !insn.addr !216
  %1 = icmp eq i32 %0, 0, !insn.addr !217
  %2 = icmp eq i1 %1, false, !insn.addr !218
  br i1 %2, label %dec_label_pc_1c18, label %dec_label_pc_1c0c, !insn.addr !218

dec_label_pc_1c0c:                                ; preds = %dec_label_pc_1bf6
  %3 = call i64 @function_18a3(), !insn.addr !219
  store i64 %3, i64* %storemerge.reg2mem, !insn.addr !220
  br label %dec_label_pc_1c27, !insn.addr !220

dec_label_pc_1c18:                                ; preds = %dec_label_pc_1bf6
  %4 = zext i32 %0 to i64, !insn.addr !221
  %5 = call i64 @function_136a(i64 %4), !insn.addr !222
  store i64 0, i64* %storemerge.reg2mem, !insn.addr !223
  br label %dec_label_pc_1c27, !insn.addr !223

dec_label_pc_1c27:                                ; preds = %dec_label_pc_1c18, %dec_label_pc_1c0c
  %storemerge.reload = load i64, i64* %storemerge.reg2mem
  ret i64 %storemerge.reload, !insn.addr !224

; uselistorder directives
  uselistorder i64* %storemerge.reg2mem, { 0, 2, 1 }
}

define i64 @function_1c30(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1c30:
  %rbx.0.reg2mem = alloca i64, !insn.addr !225
  %0 = call i64 @function_1000(), !insn.addr !226
  store i64 0, i64* %rbx.0.reg2mem, !insn.addr !227
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_3de0 to i64), i64 ptrtoint (i64* @global_var_3dd8 to i64)), i64 3), i64 0), label %dec_label_pc_1c7e, label %dec_label_pc_1c68, !insn.addr !227

dec_label_pc_1c68:                                ; preds = %dec_label_pc_1c30, %dec_label_pc_1c68
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %1 = add i64 %rbx.0.reload, 1, !insn.addr !228
  %2 = icmp eq i64 %1, ashr (i64 sub (i64 ptrtoint (i64* @global_var_3de0 to i64), i64 ptrtoint (i64* @global_var_3dd8 to i64)), i64 3), !insn.addr !229
  %3 = icmp eq i1 %2, false, !insn.addr !230
  store i64 %1, i64* %rbx.0.reg2mem, !insn.addr !230
  br i1 %3, label %dec_label_pc_1c68, label %dec_label_pc_1c7e, !insn.addr !230

dec_label_pc_1c7e:                                ; preds = %dec_label_pc_1c68, %dec_label_pc_1c30
  ret i64 %0, !insn.addr !231

; uselistorder directives
  uselistorder i64* %rbx.0.reg2mem, { 2, 0, 1 }
  uselistorder i1 false, { 3, 4, 2, 5, 6, 0, 7, 1, 10, 8, 9, 11 }
  uselistorder i64 1, { 1, 0 }
  uselistorder i64 0, { 8, 0, 1, 7, 9, 10, 2, 14, 13, 12, 11, 16, 15, 18, 17, 23, 22, 21, 20, 19, 24, 5, 3, 26, 6, 4, 27, 25 }
  uselistorder label %dec_label_pc_1c68, { 1, 0 }
}

define i64 @function_1c90() local_unnamed_addr {
dec_label_pc_1c90:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !232
}

define i64 @function_1ca0(i64* %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1ca0:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg3, i64* %stack_var_-16, align 8, !insn.addr !233
  %0 = trunc i64 %arg2 to i32, !insn.addr !234
  %1 = bitcast i64* %arg1 to i8*, !insn.addr !235
  %2 = bitcast i64* %stack_var_-16 to i32*, !insn.addr !235
  %3 = call i32 @__xmknod(i32 0, i8* %1, i32 %0, i32* nonnull %2), !insn.addr !235
  %4 = sext i32 %3 to i64, !insn.addr !235
  ret i64 %4, !insn.addr !236

; uselistorder directives
  uselistorder i32 0, { 5, 47, 48, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 6, 20, 49, 40, 39, 31, 1, 2, 26, 36, 27, 37, 28, 29, 30, 38, 22, 34, 23, 21, 24, 25, 35, 32, 33, 41, 42, 0, 4, 43, 44, 45, 46 }
}

define i64 @function_1cc0() local_unnamed_addr {
dec_label_pc_1cc0:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !237

; uselistorder directives
  uselistorder i32 1, { 4, 18, 3, 5, 6, 30, 8, 26, 25, 24, 23, 22, 21, 20, 19, 9, 7, 31, 16, 2, 28, 17, 27, 12, 11, 10, 1, 32, 14, 13, 0, 29, 15 }
}

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i32 @raise(i32) local_unnamed_addr

declare i32 @mlock(i64*, i32) local_unnamed_addr

declare i32 @strncmp(i8*, i8*, i32) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @sigaction(i32, %sigaction*, %sigaction*) local_unnamed_addr

declare i32 @strlen(i8*) local_unnamed_addr

declare i32 @sched_setscheduler(i32, i32, %sched_param*) local_unnamed_addr

declare i64* @memset(i64*, i32, i32) local_unnamed_addr

declare i8* @strncat(i8*, i8*, i32) local_unnamed_addr

declare i32 @posix_fadvise(i32, i32, i32, i32) local_unnamed_addr

declare i8* @fgets(i8*, i32, %_IO_FILE*) local_unnamed_addr

declare i32 @execve(i8*, [1 x i8*], [1 x i8*]) local_unnamed_addr

declare i64 @add_key() local_unnamed_addr

declare i64 @request_key() local_unnamed_addr

declare i32 @__xmknod(i32, i8*, i32, i32*) local_unnamed_addr

declare i64 @capget() local_unnamed_addr

declare i32 @inotify_add_watch(i32, i8*, i32) local_unnamed_addr

declare i32 @clock_settime(i32, %timespec*) local_unnamed_addr

declare i32 @ptrace(i64, ...) local_unnamed_addr

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr

declare i32 @access(i8*, i32) local_unnamed_addr

declare i32 @sched_setparam(i32, %sched_param*) local_unnamed_addr

declare i32 @reboot(i32) local_unnamed_addr

declare i32 @fork() local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

!0 = !{i64 4096}
!1 = !{i64 4100}
!2 = !{i64 4107}
!3 = !{i64 4110}
!4 = !{i64 4112}
!5 = !{i64 4118}
!6 = !{i64 4144}
!7 = !{i64 4160}
!8 = !{i64 4176}
!9 = !{i64 4192}
!10 = !{i64 4208}
!11 = !{i64 4224}
!12 = !{i64 4240}
!13 = !{i64 4256}
!14 = !{i64 4272}
!15 = !{i64 4288}
!16 = !{i64 4304}
!17 = !{i64 4320}
!18 = !{i64 4336}
!19 = !{i64 4352}
!20 = !{i64 4368}
!21 = !{i64 4384}
!22 = !{i64 4400}
!23 = !{i64 4416}
!24 = !{i64 4432}
!25 = !{i64 4448}
!26 = !{i64 4464}
!27 = !{i64 4480}
!28 = !{i64 4496}
!29 = !{i64 4512}
!30 = !{i64 4528}
!31 = !{i64 4580}
!32 = !{i64 4586}
!33 = !{i64 4632}
!34 = !{i64 4696}
!35 = !{i64 4704}
!36 = !{i64 4711}
!37 = !{i64 4714}
!38 = !{i64 4725}
!39 = !{i64 4727}
!40 = !{i64 4734}
!41 = !{i64 4739}
!42 = !{i64 4744}
!43 = !{i64 4752}
!44 = !{i64 4760}
!45 = !{i64 4768}
!46 = !{i64 4781}
!47 = !{i64 4784}
!48 = !{i64 4803}
!49 = !{i64 4815}
!50 = !{i64 4817}
!51 = !{i64 4832}
!52 = !{i64 4833}
!53 = !{i64 4843}
!54 = !{i64 4846}
!55 = !{i64 4847}
!56 = !{i64 4961}
!57 = !{i64 4964}
!58 = !{i64 4919}
!59 = !{i64 4924}
!60 = !{i64 4927}
!61 = !{i64 4929}
!62 = !{i64 4935}
!63 = !{i64 4938}
!64 = !{i64 4944}
!65 = !{i64 4969}
!66 = !{i64 4970}
!67 = !{i64 4981}
!68 = !{i64 5007}
!69 = !{i64 5040}
!70 = !{i64 5045}
!71 = !{i64 5048}
!72 = !{i64 5059}
!73 = !{i64 5065}
!74 = !{i64 5084}
!75 = !{i64 5096}
!76 = !{i64 5108}
!77 = !{i64 4971}
!78 = !{i64 5113}
!79 = !{i64 5116}
!80 = !{i64 5118}
!81 = !{i64 5159}
!82 = !{i64 5164}
!83 = !{i64 5167}
!84 = !{i64 5182}
!85 = !{i64 5188}
!86 = !{i64 5213}
!87 = !{i64 5251}
!88 = !{i64 5256}
!89 = !{i64 5259}
!90 = !{i64 5270}
!91 = !{i64 5287}
!92 = !{i64 5292}
!93 = !{i64 5321}
!94 = !{i64 5376}
!95 = !{i64 5381}
!96 = !{i64 5384}
!97 = !{i64 5395}
!98 = !{i64 5401}
!99 = !{i64 5403}
!100 = !{i64 5411}
!101 = !{i64 5463}
!102 = !{i64 5468}
!103 = !{i64 5471}
!104 = !{i64 5482}
!105 = !{i64 5516}
!106 = !{i64 5521}
!107 = !{i64 5524}
!108 = !{i64 5535}
!109 = !{i64 5561}
!110 = !{i64 5594}
!111 = !{i64 5599}
!112 = !{i64 5602}
!113 = !{i64 5619}
!114 = !{i64 5627}
!115 = !{i64 5613}
!116 = !{i64 6108}
!117 = !{i64 6116}
!118 = !{i64 5658}
!119 = !{i64 5696}
!120 = !{i64 5701}
!121 = !{i64 5704}
!122 = !{i64 5715}
!123 = !{i64 5782}
!124 = !{i64 5787}
!125 = !{i64 5790}
!126 = !{i64 5801}
!127 = !{i64 5815}
!128 = !{i64 5927}
!129 = !{i64 5932}
!130 = !{i64 5935}
!131 = !{i64 5946}
!132 = !{i64 5972}
!133 = !{i64 6005}
!134 = !{i64 6010}
!135 = !{i64 6013}
!136 = !{i64 6024}
!137 = !{i64 6050}
!138 = !{i64 6083}
!139 = !{i64 6088}
!140 = !{i64 6091}
!141 = !{i64 6102}
!142 = !{i64 6148}
!143 = !{i64 6153}
!144 = !{i64 6156}
!145 = !{i64 6159}
!146 = !{i64 6161}
!147 = !{i64 6197}
!148 = !{i64 6202}
!149 = !{i64 6205}
!150 = !{i64 6216}
!151 = !{i64 6242}
!152 = !{i64 6265}
!153 = !{i64 6270}
!154 = !{i64 6283}
!155 = !{i64 6290}
!156 = !{i64 6293}
!157 = !{i64 6297}
!158 = !{i64 6299}
!159 = !{i64 6302}
!160 = !{i64 6306}
!161 = !{i64 6307}
!162 = !{i64 6347}
!163 = !{i64 6418}
!164 = !{i64 6434}
!165 = !{i64 6486}
!166 = !{i64 6491}
!167 = !{i64 6499}
!168 = !{i64 6526}
!169 = !{i64 6531}
!170 = !{i64 6534}
!171 = !{i64 6545}
!172 = !{i64 6556}
!173 = !{i64 6581}
!174 = !{i64 6612}
!175 = !{i64 6632}
!176 = !{i64 6642}
!177 = !{i64 6667}
!178 = !{i64 6677}
!179 = !{i64 6697}
!180 = !{i64 6707}
!181 = !{i64 6717}
!182 = !{i64 6727}
!183 = !{i64 6752}
!184 = !{i64 6762}
!185 = !{i64 6787}
!186 = !{i64 6797}
!187 = !{i64 6817}
!188 = !{i64 6827}
!189 = !{i64 6847}
!190 = !{i64 6857}
!191 = !{i64 6877}
!192 = !{i64 6887}
!193 = !{i64 6912}
!194 = !{i64 6922}
!195 = !{i64 6947}
!196 = !{i64 6962}
!197 = !{i64 7000}
!198 = !{i64 7078}
!199 = !{i64 6308}
!200 = !{i64 7019}
!201 = !{i64 7035}
!202 = !{i64 7046}
!203 = !{i64 7048}
!204 = !{i64 7050}
!205 = !{i64 7061}
!206 = !{i64 7086}
!207 = !{i64 7110}
!208 = !{i64 7115}
!209 = !{i64 7117}
!210 = !{i64 7135}
!211 = !{i64 7139}
!212 = !{i64 7148}
!213 = !{i64 7153}
!214 = !{i64 7157}
!215 = !{i64 7158}
!216 = !{i64 7166}
!217 = !{i64 7174}
!218 = !{i64 7178}
!219 = !{i64 7185}
!220 = !{i64 7190}
!221 = !{i64 7195}
!222 = !{i64 7197}
!223 = !{i64 7202}
!224 = !{i64 7208}
!225 = !{i64 7216}
!226 = !{i64 7256}
!227 = !{i64 7265}
!228 = !{i64 7285}
!229 = !{i64 7289}
!230 = !{i64 7292}
!231 = !{i64 7308}
!232 = !{i64 7312}
!233 = !{i64 7332}
!234 = !{i64 7342}
!235 = !{i64 7349}
!236 = !{i64 7358}
!237 = !{i64 7368}

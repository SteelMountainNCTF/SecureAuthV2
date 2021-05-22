//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
//

#include <fcntl.h>
#include <sched.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

// ---------------- Integer Types Definitions -----------------

typedef int64_t int128_t;

// ------------------------ Structures ------------------------

struct _IO_FILE {
    int32_t e0;
};

struct _TYPEDEF_sigset_t {
    int32_t e0[1];
};

struct sched_param {
    int32_t e0;
};

struct sigaction {
    void (*e0)(int32_t);
    int32_t e1;
    void (*e2)();
    struct _TYPEDEF_sigset_t e3;
};

struct timespec {
    int64_t e0;
    int32_t e1;
};

// ------------------- Function Prototypes --------------------

int64_t entry_point(int64_t a1, int64_t a2, int64_t a3, int64_t a4);
int64_t function_1000(void);
int32_t function_1030(int32_t sig);
int32_t function_1040(int64_t * addr, int32_t len);
int32_t function_1050(char * s1, char * s2, int32_t n);
int32_t function_1060(char * s);
int32_t function_1070(int32_t sig, struct sigaction * act, struct sigaction * oact);
int32_t function_1080(char * s);
int32_t function_1090(int32_t pid, int32_t policy, struct sched_param * param);
int64_t * function_10a0(int64_t * s, int32_t c, int32_t n);
char * function_10b0(char * dest, char * src, int32_t n);
int32_t function_10c0(int32_t fd, int32_t offset, int32_t len, int32_t advise);
char * function_10d0(char * s, int32_t n, struct _IO_FILE * stream);
int32_t function_10e0(char * path, char * argv[1], char * envp[1]);
int64_t function_10f0(int64_t a1, int64_t a2, int64_t a3, int64_t a4, int64_t a5);
int64_t function_1100(int64_t a1, int64_t a2, int64_t a3, int64_t a4);
int32_t function_1110(int32_t ver, char * path, int32_t mode, int32_t * dev);
int64_t function_1120(int64_t a1, int64_t a2);
int32_t function_1130(int32_t fd, char * name, int32_t mask);
int32_t function_1140(int32_t clock_id, struct timespec * tp);
int32_t function_1150(int64_t request, ...);
int32_t function_1160(int32_t pid, int32_t * stat_loc, int32_t options);
int32_t function_1170(char * name, int32_t type);
int32_t function_1180(int32_t pid, struct sched_param * param);
int32_t function_1190(int32_t howto);
int32_t function_11a0(void);
void function_11b0(int64_t * d);
int64_t function_11f0(void);
int64_t function_1220(void);
int64_t function_1260(void);
int64_t function_12a0(void);
int64_t function_12a5(int64_t a1, int64_t a2);
int64_t function_12ef(int64_t a1, int64_t * a2, int64_t a3, int64_t a4);
int64_t function_136a(int64_t pid);
int64_t function_187a(int64_t a1);
int64_t function_18a3(void);
int64_t function_1bf6(void);
int64_t function_1c30(int64_t a1, int64_t a2, int64_t a3);
int64_t function_1c90(void);
int64_t function_1ca0(int64_t * a1, int64_t a2, int64_t a3);
int64_t function_1cc0(void);

// --------------------- Global Variables ---------------------

int64_t g1 = 0x12a0; // 0x3dd8
int64_t g2 = 0x1260; // 0x3de0
int64_t g3 = 0; // 0x3ff8
char * g4[2] = {
    "(eU8Z7HoOn<E6C(`(r&GU'RP`e1",
    "84W[WiI.GbI=['S+oc]piSCN(f"
}; // 0x40e8
struct _IO_FILE * g5 = NULL; // 0x4100
char g6 = 0; // 0x4108
int128_t g7; // 0x410c
int32_t g8; // 0x410d
int32_t g9;

// ------------------------ Functions -------------------------

// Address range: 0x1000 - 0x1017
int64_t function_1000(void) {
    int64_t result = 0; // 0x100e
    if (*(int64_t *)0x3fe8 != 0) {
        // 0x1010
        __gmon_start__();
        result = &g9;
    }
    // 0x1012
    return result;
}

// Address range: 0x1030 - 0x1036
int32_t function_1030(int32_t sig) {
    // 0x1030
    return raise(sig);
}

// Address range: 0x1040 - 0x1046
int32_t function_1040(int64_t * addr, int32_t len) {
    // 0x1040
    return mlock(addr, len);
}

// Address range: 0x1050 - 0x1056
int32_t function_1050(char * s1, char * s2, int32_t n) {
    // 0x1050
    return strncmp(s1, s2, n);
}

// Address range: 0x1060 - 0x1066
int32_t function_1060(char * s) {
    // 0x1060
    return puts(s);
}

// Address range: 0x1070 - 0x1076
int32_t function_1070(int32_t sig, struct sigaction * act, struct sigaction * oact) {
    // 0x1070
    return sigaction(sig, act, oact);
}

// Address range: 0x1080 - 0x1086
int32_t function_1080(char * s) {
    // 0x1080
    return strlen(s);
}

// Address range: 0x1090 - 0x1096
int32_t function_1090(int32_t pid, int32_t policy, struct sched_param * param) {
    // 0x1090
    return sched_setscheduler(pid, policy, param);
}

// Address range: 0x10a0 - 0x10a6
int64_t * function_10a0(int64_t * s, int32_t c, int32_t n) {
    // 0x10a0
    return memset(s, c, n);
}

// Address range: 0x10b0 - 0x10b6
char * function_10b0(char * dest, char * src, int32_t n) {
    // 0x10b0
    return strncat(dest, src, n);
}

// Address range: 0x10c0 - 0x10c6
int32_t function_10c0(int32_t fd, int32_t offset, int32_t len, int32_t advise) {
    // 0x10c0
    return posix_fadvise(fd, offset, len, advise);
}

// Address range: 0x10d0 - 0x10d6
char * function_10d0(char * s, int32_t n, struct _IO_FILE * stream) {
    // 0x10d0
    return fgets(s, n, stream);
}

// Address range: 0x10e0 - 0x10e6
int32_t function_10e0(char * path, char * argv[1], char * envp[1]) {
    // 0x10e0
    return execve(path, argv, envp);
}

// Address range: 0x10f0 - 0x10f6
int64_t function_10f0(int64_t a1, int64_t a2, int64_t a3, int64_t a4, int64_t a5) {
    // 0x10f0
    return add_key();
}

// Address range: 0x1100 - 0x1106
int64_t function_1100(int64_t a1, int64_t a2, int64_t a3, int64_t a4) {
    // 0x1100
    return request_key();
}

// Address range: 0x1110 - 0x1116
int32_t function_1110(int32_t ver, char * path, int32_t mode, int32_t * dev) {
    // 0x1110
    return __xmknod(ver, path, mode, dev);
}

// Address range: 0x1120 - 0x1126
int64_t function_1120(int64_t a1, int64_t a2) {
    // 0x1120
    return capget();
}

// Address range: 0x1130 - 0x1136
int32_t function_1130(int32_t fd, char * name, int32_t mask) {
    // 0x1130
    return inotify_add_watch(fd, name, mask);
}

// Address range: 0x1140 - 0x1146
int32_t function_1140(int32_t clock_id, struct timespec * tp) {
    // 0x1140
    return clock_settime(clock_id, tp);
}

// Address range: 0x1150 - 0x1156
int32_t function_1150(int64_t request, ...) {
    // 0x1150
    return ptrace(request);
}

// Address range: 0x1160 - 0x1166
int32_t function_1160(int32_t pid, int32_t * stat_loc, int32_t options) {
    // 0x1160
    return waitpid(pid, stat_loc, options);
}

// Address range: 0x1170 - 0x1176
int32_t function_1170(char * name, int32_t type) {
    // 0x1170
    return access(name, type);
}

// Address range: 0x1180 - 0x1186
int32_t function_1180(int32_t pid, struct sched_param * param) {
    // 0x1180
    return sched_setparam(pid, param);
}

// Address range: 0x1190 - 0x1196
int32_t function_1190(int32_t howto) {
    // 0x1190
    return reboot(howto);
}

// Address range: 0x11a0 - 0x11a6
int32_t function_11a0(void) {
    // 0x11a0
    return fork();
}

// Address range: 0x11b0 - 0x11b6
void function_11b0(int64_t * d) {
    // 0x11b0
    __cxa_finalize(d);
}

// Address range: 0x11c0 - 0x11eb
int64_t entry_point(int64_t a1, int64_t a2, int64_t a3, int64_t a4) {
    // 0x11c0
    int64_t v1; // 0x11c0
    __libc_start_main(0x1bf6, (int32_t)a4, (char **)&v1, (void (*)())0x1c30, (void (*)())0x1c90, (void (*)())a3);
    __asm_hlt();
    // UNREACHABLE
}

// Address range: 0x11f0 - 0x1219
int64_t function_11f0(void) {
    // 0x11f0
    return (int64_t)&g5;
}

// Address range: 0x1220 - 0x1259
int64_t function_1220(void) {
    // 0x1220
    return 0;
}

// Address range: 0x1260 - 0x1299
int64_t function_1260(void) {
    // 0x1260
    if (g6 != 0) {
        // 0x1298
        int64_t result; // 0x1260
        return result;
    }
    // 0x1269
    if (g3 != 0) {
        // 0x1277
        __cxa_finalize((int64_t *)*(int64_t *)0x40e0);
    }
    int64_t result2 = function_11f0(); // 0x1283
    g6 = 1;
    return result2;
}

// Address range: 0x12a0 - 0x12a5
int64_t function_12a0(void) {
    // 0x12a0
    return function_1220();
}

// Address range: 0x12a5 - 0x12ef
int64_t function_12a5(int64_t a1, int64_t a2) {
    int32_t v1 = (0x1000000 * (int32_t)a1 >> 24) - 64 + (0x1000000 * (int32_t)a2 >> 24); // 0x12d1
    return (0x100000000 * (int64_t)(v1 >> 31) | (int64_t)v1) % 95 + 32 & 0xffffffff;
}

// Address range: 0x12ef - 0x136a
int64_t function_12ef(int64_t a1, int64_t * a2, int64_t a3, int64_t a4) {
    // 0x12ef
    for (uint32_t i = 0; i < (uint32_t)(int32_t)a4; i += 4) {
        // 0x131e
        if (ptrace(5) >= 0) {
            // 0x1341
            *(int32_t *)&g7 = *(int32_t *)0x410c + 1;
        }
    }
    // 0x1366
    return i;
}

// Address range: 0x136a - 0x187a
int64_t function_136a(int64_t pid) {
    // 0x136a
    int32_t stat_loc; // bp-32, 0x136a
    waitpid((int32_t)pid, &stat_loc, 0);
    if (ptrace(0x4200) >= 0) {
        // 0x13ba
        *(int32_t *)&g7 = (int32_t)&g8;
    }
    // 0x13c9
    int64_t str; // bp-104, 0x136a
    fgets((char *)&str, 64, g5);
    uint32_t len = strlen((char *)&str); // 0x13e8
    if (len <= 63) {
        // 0x13f6
        int64_t v1; // bp-8, 0x136a
        *(char *)((int64_t)&v1 - 96 + (int64_t)(len - 1)) = 0;
    }
    // 0x1403
    if (ptrace(24) >= 0) {
        // 0x1435
        *(int32_t *)&g7 = (int32_t)&g8;
    }
    int64_t v2 = 0x100000000 * pid >> 32; // 0x1375
    int32_t pid2 = v2;
    int32_t v3; // 0x136a
    int32_t v4 = v3;
    waitpid(pid2, &stat_loc, 0);
    if (ptrace(12) >= 0) {
        // 0x148d
        *(int32_t *)&g7 = (int32_t)&g8;
    }
    int32_t v5; // 0x136a
    int64_t v6; // 0x136a
    if (v4 != 59) {
        // 0x151b
        v5 = v4;
        if (v4 == 248) {
            // 0x1525
            v5 = 0x4e455753;
            if (ptrace(13) >= 0) {
                // 0x1561
                *(int32_t *)&g7 = (int32_t)&g8;
                v5 = 0x4e455753;
            }
        }
    } else {
        // 0x14ae
        function_12ef(v2 & 0xffffffff, &str, v6, 64);
        v5 = 0x4e455753;
        if (ptrace(13) >= 0) {
            // 0x150a
            *(int32_t *)&g7 = (int32_t)&g8;
            v5 = 0x4e455753;
        }
    }
    int32_t v7 = v5;
    if (ptrace(24) >= 0) {
        // 0x1596
        *(int32_t *)&g7 = (int32_t)&g8;
    }
    // 0x15a5
    waitpid(pid2, &stat_loc, 0);
    if (ptrace(24) >= 0) {
        // 0x15e4
        *(int32_t *)&g7 = (int32_t)&g8;
    }
    // 0x15f3
    while (v4 != 248) {
        // 0x1449
        v4 = v7;
        waitpid(pid2, &stat_loc, 0);
        if (ptrace(12) >= 0) {
            // 0x148d
            *(int32_t *)&g7 = (int32_t)&g8;
        }
        if (v4 != 59) {
            // 0x151b
            v5 = v4;
            if (v4 == 248) {
                // 0x1525
                v5 = 0x4e455753;
                if (ptrace(13) >= 0) {
                    // 0x1561
                    *(int32_t *)&g7 = (int32_t)&g8;
                    v5 = 0x4e455753;
                }
            }
        } else {
            // 0x14ae
            function_12ef(v2 & 0xffffffff, &str, v6, 64);
            v5 = 0x4e455753;
            if (ptrace(13) >= 0) {
                // 0x150a
                *(int32_t *)&g7 = (int32_t)&g8;
                v5 = 0x4e455753;
            }
        }
        // 0x1570
        v7 = v5;
        if (ptrace(24) >= 0) {
            // 0x1596
            *(int32_t *)&g7 = (int32_t)&g8;
        }
        // 0x15a5
        waitpid(pid2, &stat_loc, 0);
        if (ptrace(24) >= 0) {
            // 0x15e4
            *(int32_t *)&g7 = (int32_t)&g8;
        }
    }
    // 0x17dc
    if (v4 != 249) {
        int32_t v8 = v7;
        waitpid(pid2, &stat_loc, 0);
        if (ptrace(12) >= 0) {
            // 0x164a
            *(int32_t *)&g7 = (int32_t)&g8;
        }
        // 0x1659
        if (ptrace(13) >= 0) {
            // 0x16a0
            *(int32_t *)&g7 = (int32_t)&g8;
        }
        if (v8 != 249) {
            // 0x16bd
            if (ptrace(7) >= 0) {
                // 0x1731
                *(int32_t *)&g7 = (int32_t)&g8;
            }
            // 0x1740
            waitpid(pid2, &stat_loc, 0);
            if (ptrace(7) >= 0) {
                // 0x177f
                *(int32_t *)&g7 = (int32_t)&g8;
            }
            // 0x178e
            waitpid(pid2, &stat_loc, 0);
        }
        // 0x17a7
        if (ptrace(31) >= 0) {
            // 0x17cd
            *(int32_t *)&g7 = (int32_t)&g8;
        }
        // 0x17dc
        while (v8 != 249) {
            // 0x1606
            v8 = 0x4f525a48;
            waitpid(pid2, &stat_loc, 0);
            if (ptrace(12) >= 0) {
                // 0x164a
                *(int32_t *)&g7 = (int32_t)&g8;
            }
            // 0x1659
            if (ptrace(13) >= 0) {
                // 0x16a0
                *(int32_t *)&g7 = (int32_t)&g8;
            }
            if (v8 != 249) {
                // 0x16bd
                if (ptrace(7) >= 0) {
                    // 0x1731
                    *(int32_t *)&g7 = (int32_t)&g8;
                }
                // 0x1740
                waitpid(pid2, &stat_loc, 0);
                if (ptrace(7) >= 0) {
                    // 0x177f
                    *(int32_t *)&g7 = (int32_t)&g8;
                }
                // 0x178e
                waitpid(pid2, &stat_loc, 0);
            }
            // 0x17a7
            if (ptrace(31) >= 0) {
                // 0x17cd
                *(int32_t *)&g7 = (int32_t)&g8;
            }
        }
    }
    // 0x17f0
    waitpid(pid2, &stat_loc, 0);
    if (stat_loc % 128 == 0) {
        // 0x1876
        return 0;
    }
    if (ptrace(7) >= 0) {
        // 0x183f
        *(int32_t *)&g7 = (int32_t)&g8;
    }
    // 0x184e
    waitpid(pid2, &stat_loc, 0);
    waitpid(pid2, &stat_loc, 0);
    while (stat_loc % 128 != 0) {
        // 0x1819
        if (ptrace(7) >= 0) {
            // 0x183f
            *(int32_t *)&g7 = (int32_t)&g8;
        }
        // 0x184e
        waitpid(pid2, &stat_loc, 0);
        waitpid(pid2, &stat_loc, 0);
    }
    // 0x1876
    return 0;
}

// Address range: 0x187a - 0x18a3
int64_t function_187a(int64_t a1) {
    // 0x187a
    int64_t v1; // 0x187a
    int64_t result = v1;
    *(char *)(result + 4 + (0x100000000 * result >> 32)) = (char)a1 + 32;
    int64_t v2; // 0x187a
    *(int32_t *)result = *(int32_t *)&v2 + 1;
    return result;
}

// Address range: 0x18a3 - 0x1bf6
int64_t function_18a3(void) {
    int64_t v1 = -0x44b7; // bp-474, 0x18cb
    int64_t act; // bp-184, 0x18a3
    memset(&act, 0, 152);
    act = &v1;
    for (int32_t i = 1; i < 65; i++) {
        // 0x1940
        int64_t oact; // bp-344, 0x18a3
        sigaction(i, (struct sigaction *)&act, (struct sigaction *)&oact);
    }
    // 0x1965
    if (ptrace(0) >= 0) {
        // 0x1988
        *(int32_t *)&g7 = (int32_t)&g8;
    }
    // 0x1997
    raise(19);
    int64_t path; // bp-408, 0x18a3
    execve((char *)&path, {0}, {0});
    function_10f0(0, 0, 0, 0, 0);
    int64_t tp; // bp-424, 0x18a3
    clock_settime(0, (struct timespec *)&tp);
    raise(16);
    inotify_add_watch(0, (char *)&path, 0);
    raise(16);
    access((char *)&path, F_OK);
    raise(16);
    reboot(0);
    raise(16);
    posix_fadvise(0, 0, 0, POSIX_FADV_NORMAL);
    raise(16);
    function_1ca0(&path, 0, 0);
    raise(16);
    mlock(&path, 0);
    raise(16);
    int64_t param; // bp-428, 0x18a3
    sched_setparam(0, (struct sched_param *)&param);
    raise(16);
    function_1120(0, 0);
    raise(16);
    sched_setscheduler(0, SCHED_OTHER, (struct sched_param *)&param);
    raise(16);
    function_1100(0, 0, 0, 0);
    int32_t len = strlen((char *)&path); // 0x1b32
    int64_t str; // bp-548, 0x18a3
    strncat((char *)&str, (char *)&path, len);
    if (len > 0) {
        int64_t v2 = 0;
        int64_t v3; // bp-8, 0x18a3
        int64_t v4 = v2 + (int64_t)&v3;
        char * v5 = (char *)(v4 - 540); // 0x1b6b
        char v6 = *(char *)(v4 - 400); // 0x1b7b
        int64_t v7 = function_12a5((int64_t)v6 & 0xffffffff, (int64_t)*v5 & 0xffffffff); // 0x1b8a
        *v5 = (char)v7;
        v2++;
        while (v2 != (int64_t)len) {
            // 0x1b66
            v4 = v2 + (int64_t)&v3;
            v5 = (char *)(v4 - 540);
            v6 = *(char *)(v4 - 400);
            v7 = function_12a5((int64_t)v6 & 0xffffffff, (int64_t)*v5 & 0xffffffff);
            *v5 = (char)v7;
            v2++;
        }
    }
    int64_t str2 = *(int64_t *)&g4; // 0x1bae
    int32_t strncmp_rc = strncmp((char *)&str, (char *)str2, len); // 0x1bc6
    if (strncmp_rc != 0) {
        // 0x1be5
        puts("Failed !");
    }
    // 0x1bf1
    return strncmp_rc != 0 ? 0xffffffff : 0;
}

// Address range: 0x1bf6 - 0x1c29
int64_t function_1bf6(void) {
    uint32_t v1 = fork(); // 0x1bfe
    int64_t result; // 0x1bf6
    if (v1 != 0) {
        // 0x1c18
        function_136a((int64_t)v1);
        result = 0;
    } else {
        // 0x1c0c
        result = function_18a3();
    }
    // 0x1c27
    return result;
}

// Address range: 0x1c30 - 0x1c8d
int64_t function_1c30(int64_t a1, int64_t a2, int64_t a3) {
    int64_t result = function_1000(); // 0x1c58
    if ((int64_t)&g2 - (int64_t)&g1 >> 3 == 0) {
        // 0x1c7e
        return result;
    }
    int64_t v1 = 0; // 0x1c61
    while (v1 + 1 != (int64_t)&g2 - (int64_t)&g1 >> 3) {
        // 0x1c68
        v1++;
    }
    // 0x1c7e
    return result;
}

// Address range: 0x1c90 - 0x1c91
int64_t function_1c90(void) {
    // 0x1c90
    int64_t result; // 0x1c90
    return result;
}

// Address range: 0x1ca0 - 0x1cbf
int64_t function_1ca0(int64_t * a1, int64_t a2, int64_t a3) {
    int64_t v1 = a3; // bp-16, 0x1ca4
    int32_t result = __xmknod(0, (char *)a1, (int32_t)a2, (int32_t *)&v1); // 0x1cb5
    return result;
}

// Address range: 0x1cc0 - 0x1cc9
int64_t function_1cc0(void) {
    // 0x1cc0
    int64_t result; // 0x1cc0
    return result;
}

// --------------- Dynamically Linked Functions ---------------

// void __cxa_finalize(void * d);
// void __gmon_start__(void);
// int __libc_start_main(int *(main)(int, char **, char **), int argc, char ** ubp_av, void(* init)(void), void(* fini)(void), void(* rtld_fini)(void), void(* stack_end));
// int __xmknod(int ver, const char * path, __mode_t mode, __dev_t * dev);
// int access(const char * name, int type);
// int64_t add_key(void);
// int64_t capget(void);
// int clock_settime(clockid_t clock_id, const struct timespec * tp);
// int execve(const char * path, char * const argv[], char * const envp[]);
// char * fgets(char * restrict s, int n, FILE * restrict stream);
// __pid_t fork(void);
// int inotify_add_watch(int fd, const char * name, uint32_t mask);
// void * memset(void * s, int c, size_t n);
// int mlock(const void * addr, size_t len);
// int posix_fadvise(int fd, off_t offset, off_t len, int advise);
// long int ptrace(enum __ptracerequest __request, ...);
// int puts(const char * s);
// int raise(int sig);
// int reboot(int howto);
// int64_t request_key(void);
// int sched_setparam(__pid_t pid, const struct schedparam * __param);
// int sched_setscheduler(__pid_t pid, int policy, const struct schedparam * __param);
// int sigaction(int sig, const struct sigaction * restrict act, struct sigaction * restrict oact);
// size_t strlen(const char * s);
// char * strncat(char * restrict dest, const char * restrict src, size_t n);
// int strncmp(const char * s1, const char * s2, size_t n);
// __pid_t waitpid(__pid_t pid, int * stat_loc, int options);

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (4.6.3)
// Detected functions: 41

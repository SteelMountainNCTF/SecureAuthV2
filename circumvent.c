#define _GNU_SOURCE
#include <inttypes.h>
#include <sys/types.h>
#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <dlfcn.h>
#include <sys/wait.h>

// ptrace spamming is too intense, unable to mitigate...
long ptrace(int request, int pid, void *addr, void *data) {
  //printf("ptrace: %d %d ...\n", request, pid);
  //write(1, ".", 1);
  return 0;
}

pid_t waitpid(pid_t pid, int *wstatus, int options) {
  printf("waitpid\n");
  return -1;
}

int raise(int signal) {
  printf("raise: %d\n", signal);
  return 0;
}

int clock_gettime(clockid_t clockid, struct timespec * tp) {
  printf("clock_gettime\n");
  return 0;
}

int clock_settime(clockid_t clockid, const struct timespec * tp) {
  printf("clock_settime\n");
  return 0;
}

static void _y_print_xy(const char *what, const char *s) {
  printf("  %s = %.*s\n", what, 100, s);
}

int inotify_add_watch(int fd, const char * pathname, uint32_t mask) {
  printf("inotify_add_watch %d, \"%.100s\", %d\n", fd, pathname, mask);
  _y_print_xy("path", pathname);
  return -1;
}

int access(const char * pathname, int mode) {
  printf("access \"%.100s\", %d\n", pathname, mode);
  _y_print_xy("path", pathname);
  return 0;
}

int strncmp(const char *s1, const char *s2, size_t n) {
  printf("strncmp... n = %zu\n", n);
  printf("  s1 = \"%.*s\"\n", (int)n, s1);
  printf("  s2 = \"%.*s\"\n", (int)n, s2);
  typedef int (*real_strncmp_t)(const char *, const char *, size_t);
  const int ret = ((real_strncmp_t)dlsym(RTLD_NEXT, "strncmp"))(s1, s2, n);
  printf(" --> %d\n", ret);
  return ret;
}

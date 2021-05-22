#include <stdio.h>

char * tmp = "$rj,=[4wgG.b+a$@$I#cjS98@rX";
char * cmt = "NORZH{                    }";

void do_cmp(int i) {
  printf("%d : %c %c : %d\n", i, tmp[i], cmt[i], cmt[i] - tmp[i]);
}

int main(int argc, char * argv[]) {
  do_cmp(0);
  do_cmp(1);
  do_cmp(2);
  do_cmp(3);
  do_cmp(4);
  do_cmp(5);
  do_cmp(26);
  return 0;
}

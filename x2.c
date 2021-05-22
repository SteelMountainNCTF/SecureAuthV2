#include <stdio.h>

char * tmp = "$rj,=[4wgG.b+a$@$I#cjS98@rX";
char * cmt = "NORZH{                    }";

char * tmp2 = "84W[WiI.GbI=['S+oc]piSCN(f";
char * cmt2 = "NORZH{                   }";

void do_cmp_gen(int i, int j, char a, char b) {
  printf("%d/%d\t: %c %c\t^ %c %d\t& %c %3d\t| %c %3d\t- %c %3d\n", i, j, a, b, a^b, a^b, a&b, a&b, a|b, a|b, a-b, a-b);
}

char recode(char x, char (*trf)(char)) {
  return trf(x - 32) % 95 + 32;
}

char trf1(char x) {
  return 2 * x;
}

void do_cmp(int i) {
  do_cmp_gen(0, i, cmt[i], tmp[i]);
  do_cmp_gen(1, i, recode(cmt[i], trf1), tmp[i]);
}
void do_cmp2(int i) {
  do_cmp_gen(2, i, cmt2[i], tmp2[i]);
  do_cmp_gen(3, i, recode(cmt2[i], trf1), tmp2[i]);
}

int main(int argc, char * argv[]) {
  do_cmp(0);
  do_cmp(1);
  do_cmp(2);
  do_cmp(3);
  do_cmp(4);
  do_cmp(5);
  do_cmp(26);

  printf("::\n");
  do_cmp2(0);
  do_cmp2(1);
  do_cmp2(2);
  do_cmp2(3);
  do_cmp2(4);
  do_cmp2(5);
  do_cmp2(25);
  return 0;
}

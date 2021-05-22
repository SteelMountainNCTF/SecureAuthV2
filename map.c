#include <inttypes.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

int64_t g1 = 0x12a0; // 0x3dd8
int64_t g2 = 0x1260; // 0x3de0
int64_t g3 = 0; // 0x3ff8
char * g4 = "(eU8Z7HoOn<E6C(`(r&GU'RP`e1\x00\x384W[WiI.GbI=['S+oc]piSCN(f";
//struct _IO_FILE * g5 = NULL; // 0x4100
//char g6 = 0; // 0x4108
//int128_t g7 = &g8; // 0x410c
//int32_t g8; // 0x410d
//int32_t g9;

// Address range: 0x12a5 - 0x12ef
int64_t function_12a5(signed char a1, signed char a2) {
    int32_t v1 = a1 + a2 - 64; // 0x12d1
    return (0x100000000 * (int64_t)(v1 >> 31) | (int64_t)v1) % 95 + 32 & 0xffffffff;
}

// Address range: 0x18a3 - 0x1bf6
bool function_18a3(char * str) {
    // 0x1997
    // request input
    int32_t len = strlen(str);
    if (len > 0) {
        for (int64_t v2 = 0; v2 != (int64_t)len; v2++) {
            // 0x1b66
            int32_t v1 = /* path[v2], but overwritten with str */ str[v2] + str[v2] - 64; // 0x12d1
            str[v2] = (/*((int64_t)(v1 >> 31) << 32) <-- probably doesn't matter ... | */ (int64_t)v1) % 95 + 32;
        }
    }
    char * str2 = g4; // 0x1bae
    int32_t strncmp_rc = strncmp((char *)&str, str2, len); // 0x1bc6
    if (strncmp_rc != 0) {
        // 0x1be5
        puts("Failed !");
        return false;
    } else {
        return true;
    }
}

bool check_pos(int i, char x) {
  char y = (2 * (int64_t)x - 64) % 95 + 32;
  return y == g4[28+i];
}

int main(int argc, char *argv[]) {
  for(int i = 0; i < 95; ++i) {
    
  }


  char res[55] = {'~'};
  res[54] = 0;
  for(int i = 0; i < 27; ++i) {
    for(int x = 0; x < 256; ++x) {
      if(check_pos(i, (char) x)) {
        printf("%d: %d %c vs. %c\n", i, (int)x, x, g4[28+i]);
        res[i] = x;
      }
    }
  }
  puts(res);
  return 0;
}
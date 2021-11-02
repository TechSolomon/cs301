// main.c
// Solomon Himelbloom
// 2021-11-01

#include <stdio.h>

extern long foo();

int main() {
  printf("assembly returned: %ld\n", foo());
  return 0;
}

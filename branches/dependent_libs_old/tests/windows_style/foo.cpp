#include "bar.h"
#include <stdio.h>

int foo()
{
  int i = 0;
  for(i = 0; i < 10; ++i) {
    printf("For loop: %d\n", i);
  }
  int a = i;
  printf("%d\n", a);
  return a;
}

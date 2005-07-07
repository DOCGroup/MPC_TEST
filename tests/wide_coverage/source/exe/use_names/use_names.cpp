#include "names.h"

void init()
{
  here();
  there();
#ifndef MACRO_TEST
  everywhere();
#endif
}

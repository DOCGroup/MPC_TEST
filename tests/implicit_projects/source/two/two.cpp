#include "one/foo.h"

int main()
{
#ifdef FAILURE_TRIGGER
this should fail to build
#endif
  return hello();
}

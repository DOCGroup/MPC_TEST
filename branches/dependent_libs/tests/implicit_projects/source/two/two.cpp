#include "one/foo.h"

#if defined(_WIN32_WCE)
#include <windows.h>
int WINAPI WinMain (HINSTANCE, HINSTANCE, LPWSTR, int)
#else
int main()
#endif
{
#ifdef FAILURE_TRIGGER
this should fail to build
#endif
  return hello();
}

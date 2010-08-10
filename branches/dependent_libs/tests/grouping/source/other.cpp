#include "clown.h"

#if defined(_WIN32_WCE)
#include <windows.h>
int WINAPI WinMain (HINSTANCE, HINSTANCE, LPWSTR, int)
#else
int main()
#endif
{
  clown_foo();
  return 0;
}

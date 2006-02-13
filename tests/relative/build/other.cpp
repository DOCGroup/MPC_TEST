#if defined(_WIN32_WCE)
#include <windows.h>
int WINAPI WinMain (HINSTANCE, HINSTANCE, LPWSTR, int)
#else
int main(int, char**)
#endif
{
  return 0;
}

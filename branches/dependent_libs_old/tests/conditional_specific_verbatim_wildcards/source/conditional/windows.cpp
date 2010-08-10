#include <windows.h>

void foo()
{
  CreateDirectoryW(L".", 0);
}

#if defined(ONLY_MAKE)
cause a compiler error
#endif

#if defined(ONLY_UNIX)
cause another compiler error
#endif

#if !defined(ONLY_WINDOWS)
cause yet another compiler error
#endif

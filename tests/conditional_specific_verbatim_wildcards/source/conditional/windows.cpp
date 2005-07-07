#if defined(__BORLANDC__)
#include <dir.h>
#elif defined(_MSC_VER) || defined(__DMC__)
#include <direct.h>
#endif

void foo()
{
  mkdir(".");
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

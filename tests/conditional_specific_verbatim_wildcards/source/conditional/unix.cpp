#include <sys/stat.h>
#include <sys/types.h>

void foo()
{
  mkdir(".", 0755);
}

#if !defined(ONLY_MAKE)
cause a compiler error
#endif

#if !defined(ONLY_UNIX)
cause another compiler error
#endif

#if defined(ONLY_WINDOWS)
cause yet another compiler error
#endif

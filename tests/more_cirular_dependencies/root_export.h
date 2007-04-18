#ifndef ROOT_EXPORT_H
#define ROOT_EXPORT_H

#if !defined(ROOT_HAS_DLL)
# if defined(ROOT_AS_STATIC_LIBS)
#   define ROOT_HAS_DLL 0
# else
#   define ROOT_HAS_DLL 1
# endif
#endif

#if (ROOT_HAS_DLL == 1)
#  if defined(__SUNPRO_CC) && (__SUNPRO_CC >= 0x550)
#    if defined(ROOT_BUILD_DLL)
#      define ROOT_Export __symbolic
#    else
#      define ROOT_Export __global
#    endif
#  elif defined(WIN32) || defined(UNDER_CE) || defined(__CYGWIN__)
#    if defined(ROOT_BUILD_DLL)
#      define ROOT_Export __declspec(dllexport)
#    else
#      define ROOT_Export __declspec(dllimport)
#    endif
#  elif (defined(__GNUC__) && (__GNUC__ >= 4))
#    if defined(ROOT_BUILD_DLL)
#      define ROOT_Export __attribute__((visibility("default")))
#    else
#      define ROOT_Export
#    endif
#  else
#    define ROOT_Export
#  endif
#else
#  define ROOT_Export
#endif

#endif

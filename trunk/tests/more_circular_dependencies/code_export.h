#ifndef CODE_EXPORT_H
#define CODE_EXPORT_H

#if !defined(CODE_HAS_DLL)
# if defined(CODE_AS_STATIC_LIBS)
#   define CODE_HAS_DLL 0
# else
#   define CODE_HAS_DLL 1
# endif
#endif

#if (CODE_HAS_DLL == 1)
#  if defined(__SUNPRO_CC) && (__SUNPRO_CC >= 0x550)
#    if defined(CODE_BUILD_DLL)
#      define CODE_Export __symbolic
#    else
#      define CODE_Export __global
#    endif
#  elif defined(WIN32) || defined(UNDER_CE) || defined(__CYGWIN__)
#    if defined(CODE_BUILD_DLL)
#      define CODE_Export __declspec(dllexport)
#    else
#      define CODE_Export __declspec(dllimport)
#    endif
#  elif (defined(__GNUC__) && (__GNUC__ >= 4))
#    if defined(CODE_BUILD_DLL)
#      define CODE_Export __attribute__((visibility("default")))
#    else
#      define CODE_Export
#    endif
#  else
#    define CODE_Export
#  endif
#else
#  define CODE_Export
#endif

#endif

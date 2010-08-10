#ifndef BASIC_EXPORT_H
#define BASIC_EXPORT_H

#if !defined(BASIC_HAS_DLL)
# if defined(BASIC_AS_STATIC_LIBS)
#   define BASIC_HAS_DLL 0
# else
#   define BASIC_HAS_DLL 1
# endif
#endif

#if (BASIC_HAS_DLL == 1)
#  if defined(__SUNPRO_CC) && (__SUNPRO_CC >= 0x550)
#    if defined(BASIC_BUILD_DLL)
#      define BASIC_Export __symbolic
#    else
#      define BASIC_Export __global
#    endif
#  elif defined(WIN32) || defined(UNDER_CE) || defined(__CYGWIN__)
#    if defined(BASIC_BUILD_DLL)
#      define BASIC_Export __declspec(dllexport)
#    else
#      define BASIC_Export __declspec(dllimport)
#    endif
#  elif (defined(__GNUC__) && (__GNUC__ >= 4))
#    if defined(BASIC_BUILD_DLL)
#      define BASIC_Export __attribute__((visibility("default")))
#    else
#      define BASIC_Export
#    endif
#  else
#    define BASIC_Export
#  endif
#else
#  define BASIC_Export
#endif

#endif

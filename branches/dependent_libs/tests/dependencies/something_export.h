#ifndef SOMETHING_EXPORT_H
#define SOMETHING_EXPORT_H

#if !defined(SOMETHING_HAS_DLL)
# if defined(SOMETHING_AS_STATIC_LIBS)
#   define SOMETHING_HAS_DLL 0
# else
#   define SOMETHING_HAS_DLL 1
# endif
#endif

#if (SOMETHING_HAS_DLL == 1)
#  if defined(__SUNPRO_CC) && (__SUNPRO_CC >= 0x550)
#    if defined(SOMETHING_BUILD_DLL)
#      define SOMETHING_Export __symbolic
#    else
#      define SOMETHING_Export __global
#    endif
#  elif defined(WIN32) || defined(UNDER_CE) || defined(__CYGWIN__)
#    if defined(SOMETHING_BUILD_DLL)
#      define SOMETHING_Export __declspec(dllexport)
#    else
#      define SOMETHING_Export __declspec(dllimport)
#    endif
#  elif (defined(__GNUC__) && (__GNUC__ >= 4))
#    if defined(SOMETHING_BUILD_DLL)
#      define SOMETHING_Export __attribute__((visibility("default")))
#    else
#      define SOMETHING_Export
#    endif
#  else
#    define SOMETHING_Export
#  endif
#else
#  define SOMETHING_Export
#endif

#endif

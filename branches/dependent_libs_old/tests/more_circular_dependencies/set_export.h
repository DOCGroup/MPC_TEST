#ifndef SET_EXPORT_H
#define SET_EXPORT_H

#if !defined(SET_HAS_DLL)
# if defined(SET_AS_STATIC_LIBS)
#   define SET_HAS_DLL 0
# else
#   define SET_HAS_DLL 1
# endif
#endif

#if (SET_HAS_DLL == 1)
#  if defined(__SUNPRO_CC) && (__SUNPRO_CC >= 0x550)
#    if defined(SET_BUILD_DLL)
#      define SET_Export __symbolic
#    else
#      define SET_Export __global
#    endif
#  elif defined(WIN32) || defined(UNDER_CE) || defined(__CYGWIN__)
#    if defined(SET_BUILD_DLL)
#      define SET_Export __declspec(dllexport)
#    else
#      define SET_Export __declspec(dllimport)
#    endif
#  elif (defined(__GNUC__) && (__GNUC__ >= 4))
#    if defined(SET_BUILD_DLL)
#      define SET_Export __attribute__((visibility("default")))
#    else
#      define SET_Export
#    endif
#  else
#    define SET_Export
#  endif
#else
#  define SET_Export
#endif

#endif

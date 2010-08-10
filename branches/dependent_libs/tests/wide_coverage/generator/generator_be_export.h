#ifndef GENERATOR_BE_EXPORT_H
#define GENERATOR_BE_EXPORT_H

#if !defined(GENERATOR_BE_HAS_DLL)
# if defined(GENERATOR_BE_AS_STATIC_LIBS)
#   define GENERATOR_BE_HAS_DLL 0
# else
#   define GENERATOR_BE_HAS_DLL 1
# endif
#endif

#if (GENERATOR_BE_HAS_DLL == 1)
#  if defined(__SUNPRO_CC) && (__SUNPRO_CC >= 0x550)
#    if defined(GENERATOR_BE_BUILD_DLL)
#      define GENERATOR_BE_Export __symbolic
#    else
#      define GENERATOR_BE_Export __global
#    endif
#  elif defined(WIN32) || defined(UNDER_CE) || defined(__CYGWIN__)
#    if defined(GENERATOR_BE_BUILD_DLL)
#      define GENERATOR_BE_Export __declspec(dllexport)
#    else
#      define GENERATOR_BE_Export __declspec(dllimport)
#    endif
#  elif (defined(__GNUC__) && (__GNUC__ >= 4))
#    if defined(GENERATOR_BE_BUILD_DLL)
#      define GENERATOR_BE_Export __attribute__((visibility("default")))
#    else
#      define GENERATOR_BE_Export
#    endif
#  else
#    define GENERATOR_BE_Export
#  endif
#else
#  define GENERATOR_BE_Export
#endif

#endif

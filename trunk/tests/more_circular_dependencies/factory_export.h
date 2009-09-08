#ifndef FACTORY_EXPORT_H
#define FACTORY_EXPORT_H

#if !defined(FACTORY_HAS_DLL)
# if defined(FACTORY_AS_STATIC_LIBS)
#   define FACTORY_HAS_DLL 0
# else
#   define FACTORY_HAS_DLL 1
# endif
#endif

#if (FACTORY_HAS_DLL == 1)
#  if defined(__SUNPRO_CC) && (__SUNPRO_CC >= 0x550)
#    if defined(FACTORY_BUILD_DLL)
#      define FACTORY_Export __symbolic
#    else
#      define FACTORY_Export __global
#    endif
#  elif defined(WIN32) || defined(UNDER_CE) || defined(__CYGWIN__)
#    if defined(FACTORY_BUILD_DLL)
#      define FACTORY_Export __declspec(dllexport)
#    else
#      define FACTORY_Export __declspec(dllimport)
#    endif
#  elif (defined(__GNUC__) && (__GNUC__ >= 4))
#    if defined(FACTORY_BUILD_DLL)
#      define FACTORY_Export __attribute__((visibility("default")))
#    else
#      define FACTORY_Export
#    endif
#  else
#    define FACTORY_Export
#  endif
#else
#  define FACTORY_Export
#endif

#endif

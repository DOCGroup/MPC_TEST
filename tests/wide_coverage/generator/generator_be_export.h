#ifndef GENERATOR_BE_EXPORT_H
#define GENERATOR_BE_EXPORT_H

#if defined (GENERATOR_BE_AS_STATIC_LIBS) && !defined (GENERATOR_BE_HAS_DLL)
# define GENERATOR_BE_HAS_DLL 0
#endif

#if !defined (GENERATOR_BE_HAS_DLL)
# if defined (WIN32)
#   define GENERATOR_BE_HAS_DLL 1
# else
#   define GENERATOR_BE_HAS_DLL 0
# endif
#endif

#if defined (GENERATOR_BE_HAS_DLL)
#  if (GENERATOR_BE_HAS_DLL == 1)
#    if defined (GENERATOR_BE_BUILD_DLL)
#      define GENERATOR_BE_Export __declspec (dllexport)
#    else
#      define GENERATOR_BE_Export __declspec (dllimport)
#    endif
#  else
#    define GENERATOR_BE_Export
#  endif
#else
#  define GENERATOR_BE_Export
#endif

#endif

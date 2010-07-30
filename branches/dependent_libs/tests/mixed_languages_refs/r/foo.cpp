#if defined(WIN32) || defined(UNDER_CE) || defined(__CYGWIN__)
#  define R_Export __declspec(dllexport)
#else
#  define R_Export
#endif

R_Export void foo_r() {
}

#if defined(WIN32) || defined(UNDER_CE) || defined(__CYGWIN__)
#  define N_Export __declspec(dllexport)
#else
#  define N_Export
#endif

N_Export void foo_n() {
}

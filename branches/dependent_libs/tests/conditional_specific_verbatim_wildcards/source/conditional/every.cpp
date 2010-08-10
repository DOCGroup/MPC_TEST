void foo()
{
#if defined(FAIL_IF_NOT_DEFINED)
  int q = 0;
#endif
  for(int i = 0; i < 10; i++) {
    q = (q + i) * i * q;
  }
}

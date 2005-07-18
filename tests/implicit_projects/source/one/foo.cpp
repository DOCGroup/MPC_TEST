int hello()
{
#ifndef FAILURE_TRIGGER
this should fail to build
#endif
  return 554;
}

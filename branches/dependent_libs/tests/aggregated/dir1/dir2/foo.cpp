#if defined(REQUIRED) && defined(ALSO_REQUIRED)
#else
Causing an error the old school way
#endif
#if !defined(NEEDED_BY_SOME)
The NEEDED_BY_SOME macro should be set
#endif
#if !defined(NEEDED_BY_ALL)
The NEEDED_BY_ALL macro should be set
#endif
#if defined(NEEDED_BY_NONE)
The NEEDED_BY_NONE macro should not be set
#endif


## Makefile.foo.am

noinst_LTLIBRARIES = libfoo.la
Debug : libfoo.la
noinst_LTLIBRARIES += libfoo.la
Release : libfoo.la

libfoo_SOURCES_COMMON = \
  foo.cpp

libfoo_la_SOURCES = $(libfoo_SOURCES_COMMON)
libfoo_la_SOURCES = $(libfoo_SOURCES_COMMON)

## Clean up template repositories, etc.
clean-local:
	-rm -f *~ *.bak *.rpo *.sym lib*.*_pure_* core core.*
	-rm -f gcctemp.c gcctemp so_locations *.ics
	-rm -rf cxx_repository ptrepository ti_files
	-rm -rf templateregistry ir.out
	-rm -rf ptrepository SunWS_cache Templates.DB

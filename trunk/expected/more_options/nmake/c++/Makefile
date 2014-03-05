!IF "$(CFG)" == ""
CFG=Win32 Debug
!MESSAGE No configuration specified. Defaulting to Win32 Debug.
!ENDIF

!IF "$(CUSTOM_TARGETS)" == ""
CUSTOM_TARGETS=_EMPTY_TARGET_
!ENDIF

all: foo

depend: foo-depend

clean generated realclean $(CUSTOM_TARGETS):
	@echo Project: Makefile.foo.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.foo.mak CFG="$(CFG)" $(@)

foo:
	@echo Project: Makefile.foo.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.foo.mak CFG="$(CFG)" all

foo-depend:
	@echo Project: Makefile.foo.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.foo.mak CFG="$(CFG)" depend

project_name_list:
	@echo foo

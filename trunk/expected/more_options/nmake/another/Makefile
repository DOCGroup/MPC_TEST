!IF "$(CFG)" == ""
CFG=Win32 Debug
!MESSAGE No configuration specified. Defaulting to Win32 Debug.
!ENDIF

!IF "$(CUSTOM_TARGETS)" == ""
CUSTOM_TARGETS=_EMPTY_TARGET_
!ENDIF

all: another

depend: another-depend

clean generated realclean $(CUSTOM_TARGETS):
	@echo Project: Makefile.another.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.another.mak CFG="$(CFG)" $(@)

another:
	@echo Project: Makefile.another.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.another.mak CFG="$(CFG)" all

another-depend:
	@echo Project: Makefile.another.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.another.mak CFG="$(CFG)" depend

project_name_list:
	@echo another

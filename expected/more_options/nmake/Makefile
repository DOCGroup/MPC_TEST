!IF "$(CFG)" == ""
CFG=Win32 Debug
!MESSAGE No configuration specified. Defaulting to Win32 Debug.
!ENDIF

!IF "$(CUSTOM_TARGETS)" == ""
CUSTOM_TARGETS=_EMPTY_TARGET_
!ENDIF

all: another-target foo

clean depend generated realclean $(CUSTOM_TARGETS):
	@cd another
	@echo Directory: another
	@echo Project: Makefile.another.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.another.mak CFG="$(CFG)" $(@)
	@cd $(MAKEDIR)
	@cd c++
	@echo Directory: c++
	@echo Project: Makefile.foo.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.foo.mak CFG="$(CFG)" $(@)
	@cd $(MAKEDIR)

another-target:
	@cd another
	@echo Directory: another
	@echo Project: Makefile.another.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.another.mak CFG="$(CFG)" all
	@cd $(MAKEDIR)

foo:
	@cd c++
	@echo Directory: c++
	@echo Project: Makefile.foo.mak
	$(MAKE) /$(MAKEFLAGS) /f Makefile.foo.mak CFG="$(CFG)" all
	@cd $(MAKEDIR)

project_name_list:
	@echo another-target
	@echo foo

# -*- makefile -*-
MAKEFILE = GNUmakefile

ifeq ($(findstring k,$(MAKEFLAGS)),k)
  KEEP_GOING = -
endif

include $(ACE_ROOT)/include/makeinclude/macros.GNU

all: another-target foo

REMAINING_TARGETS := $(subst all, , $(TARGETS_NESTED:.nested=)) $(CUSTOM_TARGETS)

$(REMAINING_TARGETS):
	@cd another && $(MAKE) -f GNUmakefile.another $(@)
	@cd c++ && $(MAKE) -f GNUmakefile.foo $(@)

.PHONY: another-target
another-target:
	@cd another && $(MAKE) -f GNUmakefile.another all

.PHONY: foo
foo:
	@cd c++ && $(MAKE) -f GNUmakefile.foo all

project_name_list:
	@echo another-target
	@echo foo

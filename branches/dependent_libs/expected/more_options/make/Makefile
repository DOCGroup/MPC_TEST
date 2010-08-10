
all: another-target foo j

clean depend generated realclean $(CUSTOM_TARGETS):
	@cd another && $(MAKE) -f Makefile.another $(@)
	@cd c++ && $(MAKE) -f Makefile.foo $(@)
	@cd java && $(MAKE) -f Makefile.j $(@)

.PHONY: another-target
another-target:
	@cd another && $(MAKE) -f Makefile.another generated all

.PHONY: foo
foo:
	@cd c++ && $(MAKE) -f Makefile.foo generated all

.PHONY: j
j:
	@cd java && $(MAKE) -f Makefile.j generated all

project_name_list:
	@echo another-target
	@echo foo
	@echo j

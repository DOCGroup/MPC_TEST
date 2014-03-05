
all: another-target foo j

depend: another-target-depend foo-depend j-depend

clean generated realclean check-syntax $(CUSTOM_TARGETS):
	@cd another && $(MAKE) -f Makefile.another $(@)
	@cd c++ && $(MAKE) -f Makefile.foo $(@)
	@cd java && $(MAKE) -f Makefile.j $(@)

.PHONY: another-target
another-target:
	@cd another && $(MAKE) -f Makefile.another all

.PHONY: another-target-depend
another-target-depend:
	@cd another && $(MAKE) -f Makefile.another depend

.PHONY: foo
foo:
	@cd c++ && $(MAKE) -f Makefile.foo all

.PHONY: foo-depend
foo-depend:
	@cd c++ && $(MAKE) -f Makefile.foo depend

.PHONY: j
j:
	@cd java && $(MAKE) -f Makefile.j all

.PHONY: j-depend
j-depend:
	@cd java && $(MAKE) -f Makefile.j depend

project_name_list:
	@echo another-target
	@echo foo
	@echo j


all: foo

depend: foo-depend

clean generated realclean check-syntax $(CUSTOM_TARGETS):
	@$(MAKE) -f Makefile.foo $(@)

.PHONY: foo
foo:
	@$(MAKE) -f Makefile.foo all

.PHONY: foo-depend
foo-depend:
	@$(MAKE) -f Makefile.foo depend

project_name_list:
	@echo foo

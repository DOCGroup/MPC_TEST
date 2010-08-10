
all: foo

clean depend generated realclean $(CUSTOM_TARGETS):
	@$(MAKE) -f Makefile.foo $(@)

.PHONY: foo
foo:
	@$(MAKE) -f Makefile.foo generated all

project_name_list:
	@echo foo

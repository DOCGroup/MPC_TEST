
all: another

clean depend generated realclean $(CUSTOM_TARGETS):
	@$(MAKE) -f Makefile.another $(@)

.PHONY: another
another:
	@$(MAKE) -f Makefile.another generated all

project_name_list:
	@echo another

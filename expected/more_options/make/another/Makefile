
all: another

clean depend generated realclean check-syntax $(CUSTOM_TARGETS):
	@$(MAKE) -f Makefile.another $(@)

.PHONY: another
another:
	@$(MAKE) -f Makefile.another all

project_name_list:
	@echo another

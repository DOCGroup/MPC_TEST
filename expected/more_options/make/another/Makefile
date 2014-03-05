
all: another

depend: another-depend

clean generated realclean check-syntax $(CUSTOM_TARGETS):
	@$(MAKE) -f Makefile.another $(@)

.PHONY: another
another:
	@$(MAKE) -f Makefile.another all

.PHONY: another-depend
another-depend:
	@$(MAKE) -f Makefile.another depend

project_name_list:
	@echo another

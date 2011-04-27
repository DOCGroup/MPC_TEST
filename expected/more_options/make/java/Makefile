
all: j

clean depend generated realclean check-syntax $(CUSTOM_TARGETS):
	@$(MAKE) -f Makefile.j $(@)

.PHONY: j
j:
	@$(MAKE) -f Makefile.j all

project_name_list:
	@echo j

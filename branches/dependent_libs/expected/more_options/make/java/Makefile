
all: j

clean depend generated realclean $(CUSTOM_TARGETS):
	@$(MAKE) -f Makefile.j $(@)

.PHONY: j
j:
	@$(MAKE) -f Makefile.j generated all

project_name_list:
	@echo j


all: j

depend: j-depend

clean generated realclean check-syntax $(CUSTOM_TARGETS):
	@$(MAKE) -f Makefile.j $(@)

.PHONY: j
j:
	@$(MAKE) -f Makefile.j all

.PHONY: j-depend
j-depend:
	@$(MAKE) -f Makefile.j depend

project_name_list:
	@echo j

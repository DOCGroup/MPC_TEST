#----------------------------------------------------------------------------
#       Macros
#----------------------------------------------------------------------------
CC            = gcc
CXX           = g++
LD            = $(CXX) $(CCFLAGS) $(CPPFLAGS)
AR            = ar
PICFLAGS      = -fPIC
CPPFLAGS      = $(PICFLAGS) $(GENFLAGS) -D_REENTRANT
OBJEXT        = .o
OUTPUT_OPTION = -o "$@"
COMPILE.c     = $(CC) $(CFLAGS) $(CCFLAGS) $(CPPFLAGS) -c
COMPILE.cc    = $(CXX) $(CCFLAGS) $(CPPFLAGS) -c
LDFLAGS       = -L"."
CCC           = $(CXX)
MAKEFILE      = Makefile.r
DEPENDENCIES  = .depend.$(MAKEFILE)
LTARGETDIR    = ./
CAT           = cat
MV            = mv -f
RM            = rm -rf
CP            = cp -p
NUL           = /dev/null
MKDIR         = mkdir -p
TESTDIRSTART  = test -d
TESTDIREND    = ||
TOUCH         = touch
EXEEXT        = 
LIBPREFIX     = lib
LIBSUFFIX     = 
GENFLAGS      = -O
LDLIBS        = -ldl $(subst lib,-l,$(sort $(basename $(notdir $(wildcard /usr/lib/librt.so /lib/librt.so))))) -lpthread
OBJS          = foo$(OBJEXT)
AREXT         = .a
LIB           = $(LTARGETDIR)$(LIBPREFIX)r$(LIBSUFFIX)$(AREXT)
SOEXT         = .so
SHTARGETDIR   = ./
SHLIB         = $(SHTARGETDIR)$(LIBPREFIX)r$(LIBSUFFIX)$(SOEXT)
SHFLAGS       = -shared
SRC           = foo.cpp
LINK.cc       = $(LD) $(LDFLAGS)
EXPORTFLAGS   = $(DYNAMICFLAGS)

#----------------------------------------------------------------------------
#       Local targets
#----------------------------------------------------------------------------

all: $(SHLIB)

$(SHLIB): $(OBJS)
	@$(TESTDIRSTART) "$(SHTARGETDIR)" $(TESTDIREND) $(MKDIR) "$(SHTARGETDIR)"
	$(LINK.cc) $(SHFLAGS) $(OBJS) $(LDLIBS) $(OUTPUT_OPTION)

$(LIB): $(OBJS)
	@$(TESTDIRSTART) "$(LTARGETDIR)" $(TESTDIREND) $(MKDIR) "$(LTARGETDIR)"
	$(AR) $(ARFLAGS) $(LIB) $(OBJS)

generated: $(GENERATED_DIRTY)
	@-:

foo$(OBJEXT): foo.cpp
	$(COMPILE.cc) $(EXPORTFLAGS) $(OUTPUT_OPTION) foo.cpp

clean:
	-$(RM) $(OBJS)

realclean: clean
	-$(RM) $(SHLIB) $(LIB)

check-syntax:
	$(COMPILE.cc) $(EXPORTFLAGS) -Wall -Wextra -pedantic -fsyntax-only $(CHK_SOURCES)

#----------------------------------------------------------------------------
#       Dependencies
#----------------------------------------------------------------------------

$(DEPENDENCIES):
	@$(TOUCH) $(DEPENDENCIES)

depend:
	-$(MPC_ROOT)/depgen.pl  $(CFLAGS) $(CCFLAGS) $(CPPFLAGS) -f $(DEPENDENCIES) $(SRC) 2> $(NUL)

include $(DEPENDENCIES)

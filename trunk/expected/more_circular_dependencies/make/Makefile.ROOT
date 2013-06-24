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
COMPILE.c     = $(CC) $(CFLAGS) $(CPPFLAGS) -c
COMPILE.cc    = $(CXX) $(CCFLAGS) $(CPPFLAGS) -c
LDFLAGS       = -L"."
CCC           = $(CXX)
MAKEFILE      = Makefile.ROOT
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
OBJS          = root$(OBJEXT)
AREXT         = .a
LIB           = $(LTARGETDIR)$(LIBPREFIX)ROOT$(LIBSUFFIX)$(AREXT)
SOEXT         = .so
SHTARGETDIR   = ./
SHLIB         = $(SHTARGETDIR)$(LIBPREFIX)ROOT$(LIBSUFFIX)$(SOEXT)
SHFLAGS       = -shared
SRC           = root.cpp
LINK.cc       = $(LD) $(LDFLAGS)
DYNAMICFLAGS  = -DROOT_BUILD_DLL
STATICFLAGS   = -DROOT_AS_STATIC_LIBS
EXPORTFLAGS   = $(DYNAMICFLAGS)
DEPLIBS       = $(foreach lib, , $(foreach libpath, ., $(wildcard $(libpath)/lib$(lib).a)))

#----------------------------------------------------------------------------
#       Local targets
#----------------------------------------------------------------------------

all: $(SHLIB)

$(SHLIB): $(OBJS) $(DEPLIBS)
	@$(TESTDIRSTART) "$(SHTARGETDIR)" $(TESTDIREND) $(MKDIR) "$(SHTARGETDIR)"
	$(LINK.cc) $(SHFLAGS) $(OBJS) $(LDLIBS) $(OUTPUT_OPTION)

$(LIB): $(OBJS)
	@$(TESTDIRSTART) "$(LTARGETDIR)" $(TESTDIREND) $(MKDIR) "$(LTARGETDIR)"
	$(AR) $(ARFLAGS) $(LIB) $(OBJS)

generated: $(GENERATED_DIRTY)
	@-:

root$(OBJEXT): root.cpp
	$(COMPILE.cc) $(EXPORTFLAGS) $(OUTPUT_OPTION) root.cpp

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

-include $(DEPENDENCIES)

# Microsoft Developer Studio Generated NMAKE File
!IF "$(CFG)" == ""
CFG=Win32 Debug
!MESSAGE No configuration specified. Defaulting to Win32 Debug.
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release"
!ELSE
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "Makefile.DomainApplicationManager.mak" CFG="Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "Win32 Debug" (based on "Win32 (x86) Dynamic-Lynk Library")
!MESSAGE "Win32 Release" (based on "Win32 (x86) Dynamic-Lynk Library")
!MESSAGE "Win32 Static Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "Win32 Static Release" (based on "Win32 (x86) Static Library")
!MESSAGE
!ERROR An invalid configuration was specified.
!ENDIF

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF

!IF "$(DEPGEN)" == ""
!IF EXISTS("$(DEPGEN_ROOT)/depgen.pl")
DEPGEN=perl $(DEPGEN_ROOT)/depgen.pl -i -t nmake
!ELSEIF EXISTS("$(ACE_ROOT)/bin/depgen.pl")
DEPGEN=perl $(ACE_ROOT)/bin/depgen.pl -i -t nmake
!ENDIF
!ENDIF

GENERATED_DIRTY =

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\DomainApplicationManager\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\DomainApplicationManagerd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.DomainApplicationManager.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\DomainApplicationManagerd.lib"
        -@del /f/q "$(OUTDIR)\DomainApplicationManagerd.exp"
        -@del /f/q "$(OUTDIR)\DomainApplicationManagerd.ilk"
	-@del /f/q ".\DomainApplicationManagerd.pdb"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\DomainApplicationManager\$(NULL)" mkdir "Debug\DomainApplicationManager"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd".\DomainApplicationManagerd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\DomainApplicationManagerd.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\DomainApplicationManagerd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\DomainApplicationManagerd.lib.manifest" mt.exe -manifest "$(OUTDIR)\DomainApplicationManagerd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\DomainApplicationManager\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\DomainApplicationManager.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.DomainApplicationManager.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\DomainApplicationManager.lib"
        -@del /f/q "$(OUTDIR)\DomainApplicationManager.exp"
        -@del /f/q "$(OUTDIR)\DomainApplicationManager.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\DomainApplicationManager\$(NULL)" mkdir "Release\DomainApplicationManager"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\DomainApplicationManager.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\DomainApplicationManager.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\DomainApplicationManager.lib.manifest" mt.exe -manifest "$(OUTDIR)\DomainApplicationManager.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\DomainApplicationManager\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\DomainApplicationManagersd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.DomainApplicationManager.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\DomainApplicationManagersd.lib"
        -@del /f/q "$(OUTDIR)\DomainApplicationManagersd.exp"
        -@del /f/q "$(OUTDIR)\DomainApplicationManagersd.ilk"
	-@del /f/q ".\DomainApplicationManagersd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\DomainApplicationManager\$(NULL)" mkdir "Static_Debug\DomainApplicationManager"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /GR /Gy /MDd /Fd".\DomainApplicationManagersd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\DomainApplicationManagersd.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\DomainApplicationManagersd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\DomainApplicationManagersd.lib.manifest" mt.exe -manifest "$(OUTDIR)\DomainApplicationManagersd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\DomainApplicationManager\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\DomainApplicationManagers.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.DomainApplicationManager.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\DomainApplicationManagers.lib"
        -@del /f/q "$(OUTDIR)\DomainApplicationManagers.exp"
        -@del /f/q "$(OUTDIR)\DomainApplicationManagers.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\DomainApplicationManager\$(NULL)" mkdir "Static_Release\DomainApplicationManager"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\DomainApplicationManagers.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\DomainApplicationManagers.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\DomainApplicationManagers.lib.manifest" mt.exe -manifest "$(OUTDIR)\DomainApplicationManagers.lib.manifest" -outputresource:$@;2

!ENDIF

CLEAN :
	-@del /f/s/q "$(INTDIR)"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)\$(NULL)" mkdir "$(OUTDIR)"

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.DomainApplicationManager.dep")
!INCLUDE "Makefile.DomainApplicationManager.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.DomainApplicationManager.dep")
	@echo Using "Makefile.DomainApplicationManager.dep"
!ELSE
	@echo Warning: cannot find "Makefile.DomainApplicationManager.dep"
!ENDIF
!ENDIF


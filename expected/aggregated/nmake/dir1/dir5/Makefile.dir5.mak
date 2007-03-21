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
!MESSAGE NMAKE /f "Makefile.dir5.mak" CFG="Win32 Debug"
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
INTDIR=Debug\dir5\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) ".\dir5d.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DNEEDED_BY_ALL -DNEEDED_BY_SOME -DREQUIRED -f "Makefile.dir5.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\dir5d.pdb"
        -@del /f/q ".\dir5d.dll"
        -@del /f/q "$(OUTDIR)\dir5d.lib"
        -@del /f/q "$(OUTDIR)\dir5d.exp"
        -@del /f/q "$(OUTDIR)\dir5d.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\dir5\$(NULL)" mkdir "Debug\dir5"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /D NEEDED_BY_ALL /D NEEDED_BY_SOME /D REQUIRED /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:".\dir5d.pdb" /machine:I386 /out:".\dir5d.dll" /implib:"$(OUTDIR)\dir5d.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

".\dir5d.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\dir5d.dll.manifest" mt.exe -manifest ".\dir5d.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\dir5\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) ".\dir5.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DNEEDED_BY_ALL -DNEEDED_BY_SOME -DREQUIRED -f "Makefile.dir5.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\dir5.dll"
        -@del /f/q "$(OUTDIR)\dir5.lib"
        -@del /f/q "$(OUTDIR)\dir5.exp"
        -@del /f/q "$(OUTDIR)\dir5.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\dir5\$(NULL)" mkdir "Release\dir5"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D NEEDED_BY_ALL /D NEEDED_BY_SOME /D REQUIRED /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:".\dir5.dll" /implib:"$(OUTDIR)\dir5.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

".\dir5.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\dir5.dll.manifest" mt.exe -manifest ".\dir5.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\dir5\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\dir5sd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DNEEDED_BY_ALL -DNEEDED_BY_SOME -DREQUIRED -f "Makefile.dir5.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\dir5sd.lib"
        -@del /f/q "$(OUTDIR)\dir5sd.exp"
        -@del /f/q "$(OUTDIR)\dir5sd.ilk"
	-@del /f/q ".\dir5sd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\dir5\$(NULL)" mkdir "Static_Debug\dir5"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\dir5sd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D NEEDED_BY_ALL /D NEEDED_BY_SOME /D REQUIRED /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\dir5sd.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\dir5sd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\dir5sd.lib.manifest" mt.exe -manifest "$(OUTDIR)\dir5sd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\dir5\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\dir5s.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DNEEDED_BY_ALL -DNEEDED_BY_SOME -DREQUIRED -f "Makefile.dir5.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\dir5s.lib"
        -@del /f/q "$(OUTDIR)\dir5s.exp"
        -@del /f/q "$(OUTDIR)\dir5s.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\dir5\$(NULL)" mkdir "Static_Release\dir5"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D NEEDED_BY_ALL /D NEEDED_BY_SOME /D REQUIRED /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\dir5s.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\dir5s.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\dir5s.lib.manifest" mt.exe -manifest "$(OUTDIR)\dir5s.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.dir5.dep")
!INCLUDE "Makefile.dir5.dep"
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
!IF EXISTS("Makefile.dir5.dep")
	@echo Using "Makefile.dir5.dep"
!ELSE
	@echo Warning: cannot find "Makefile.dir5.dep"
!ENDIF
!ENDIF


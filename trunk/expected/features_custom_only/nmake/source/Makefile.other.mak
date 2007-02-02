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
!MESSAGE NMAKE /f "Makefile.other.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY = "other\zar_otherA.cpp" "other\zar_otherA.h" "other\zar_otherA.inl" "other\zar_otherB.cpp" "other\zar_otherB.h" "other\zar_otherB.inl" "other\zar_otherC.h"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\other\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) ".\otherd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.other.dep" "other\zar_otherA.cpp" "other\zar_otherB.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\otherd.pdb"
        -@del /f/q ".\otherd.dll"
        -@del /f/q "$(OUTDIR)\otherd.lib"
        -@del /f/q "$(OUTDIR)\otherd.exp"
        -@del /f/q "$(OUTDIR)\otherd.ilk"
        -@del /f/q "other\zar_otherA.cpp"
        -@del /f/q "other\zar_otherA.h"
        -@del /f/q "other\zar_otherA.inl"
        -@del /f/q "other\zar_otherB.cpp"
        -@del /f/q "other\zar_otherB.h"
        -@del /f/q "other\zar_otherB.inl"
        -@del /f/q "other\zar_otherC.h"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\other\$(NULL)" mkdir "Debug\other"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:".\otherd.pdb" /machine:I386 /out:".\otherd.dll" /implib:"$(OUTDIR)\otherd.lib"
LINK32_OBJS= \
	"$(INTDIR)\other\zar_otherA.obj" \
	"$(INTDIR)\other\zar_otherB.obj"

".\otherd.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\otherd.dll.manifest" mt.exe -manifest ".\otherd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\other\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) ".\other.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.other.dep" "other\zar_otherA.cpp" "other\zar_otherB.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\other.dll"
        -@del /f/q "$(OUTDIR)\other.lib"
        -@del /f/q "$(OUTDIR)\other.exp"
        -@del /f/q "$(OUTDIR)\other.ilk"
        -@del /f/q "other\zar_otherA.cpp"
        -@del /f/q "other\zar_otherA.h"
        -@del /f/q "other\zar_otherA.inl"
        -@del /f/q "other\zar_otherB.cpp"
        -@del /f/q "other\zar_otherB.h"
        -@del /f/q "other\zar_otherB.inl"
        -@del /f/q "other\zar_otherC.h"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\other\$(NULL)" mkdir "Release\other"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:".\other.dll" /implib:"$(OUTDIR)\other.lib"
LINK32_OBJS= \
	"$(INTDIR)\other\zar_otherA.obj" \
	"$(INTDIR)\other\zar_otherB.obj"

".\other.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\other.dll.manifest" mt.exe -manifest ".\other.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\other\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\othersd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.other.dep" "other\zar_otherA.cpp" "other\zar_otherB.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\othersd.lib"
        -@del /f/q "$(OUTDIR)\othersd.exp"
        -@del /f/q "$(OUTDIR)\othersd.ilk"
	-@del /f/q ".\othersd.pdb"
        -@del /f/q "other\zar_otherA.cpp"
        -@del /f/q "other\zar_otherA.h"
        -@del /f/q "other\zar_otherA.inl"
        -@del /f/q "other\zar_otherB.cpp"
        -@del /f/q "other\zar_otherB.h"
        -@del /f/q "other\zar_otherB.inl"
        -@del /f/q "other\zar_otherC.h"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\other\$(NULL)" mkdir "Static_Debug\other"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /GR /Gy /MDd /Fd".\othersd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\othersd.lib"
LINK32_OBJS= \
	"$(INTDIR)\other\zar_otherA.obj" \
	"$(INTDIR)\other\zar_otherB.obj"

"$(OUTDIR)\othersd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\othersd.lib.manifest" mt.exe -manifest "$(OUTDIR)\othersd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\other\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\others.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.other.dep" "other\zar_otherA.cpp" "other\zar_otherB.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\others.lib"
        -@del /f/q "$(OUTDIR)\others.exp"
        -@del /f/q "$(OUTDIR)\others.ilk"
        -@del /f/q "other\zar_otherA.cpp"
        -@del /f/q "other\zar_otherA.h"
        -@del /f/q "other\zar_otherA.inl"
        -@del /f/q "other\zar_otherB.cpp"
        -@del /f/q "other\zar_otherB.h"
        -@del /f/q "other\zar_otherB.inl"
        -@del /f/q "other\zar_otherC.h"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\other\$(NULL)" mkdir "Static_Release\other"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\others.lib"
LINK32_OBJS= \
	"$(INTDIR)\other\zar_otherA.obj" \
	"$(INTDIR)\other\zar_otherB.obj"

"$(OUTDIR)\others.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\others.lib.manifest" mt.exe -manifest "$(OUTDIR)\others.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.other.dep")
!INCLUDE "Makefile.other.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="other\zar_otherA.cpp"

"$(INTDIR)\other\zar_otherA.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\other\$(NULL)" mkdir "$(INTDIR)\other\"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\other\zar_otherA.obj" $(SOURCE)

SOURCE="other\zar_otherB.cpp"

"$(INTDIR)\other\zar_otherB.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\other\$(NULL)" mkdir "$(INTDIR)\other\"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\other\zar_otherB.obj" $(SOURCE)

SOURCE="other\other.poo"

InputPath=other\other.poo

"other\zar_otherA.cpp" "other\zar_otherA.h" "other\zar_otherA.inl" "other\zar_otherB.cpp" "other\zar_otherB.h" "other\zar_otherB.inl" "other\zar_otherC.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	perl ..\bin\exercise.pl $(CLO_ZARFLAGS) -GX -Sc "$(InputPath)"
<<


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.other.dep")
	@echo Using "Makefile.other.dep"
!ELSE
	@echo Warning: cannot find "Makefile.other.dep"
!ENDIF
!ENDIF


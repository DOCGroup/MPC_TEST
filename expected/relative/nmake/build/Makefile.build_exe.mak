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
!MESSAGE NMAKE /f "Makefile.build_exe.mak" CFG="Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Static Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Static Release" (based on "Win32 (x86) Console Application")
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
INSTALLDIR=.
INTDIR=Debug\build_exe\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\other.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.build_exe.dep" "..\src\foo.cpp" "bar.cpp" "lower\bar.cpp" "other.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\other.pdb"
        -@del /f/q "$(INSTALLDIR)\other.exe"
        -@del /f/q "$(INSTALLDIR)\other.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\build_exe\$(NULL)" mkdir "Debug\build_exe"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "." /D _DEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\other.pdb" /machine:I386 /out:"$(INSTALLDIR)\other.exe"
LINK32_OBJS= \
	"$(INTDIR)\dotdot\src\bar.res" \
	"$(INTDIR)\dotdot\src\foo.obj" \
	"$(INTDIR)\bar.obj" \
	"$(INTDIR)\lower\bar.obj" \
	"$(INTDIR)\other.obj"

"$(INSTALLDIR)\other.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\other.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\other.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=Release
INSTALLDIR=Release
INTDIR=Release\build_exe\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\other.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.build_exe.dep" "..\src\foo.cpp" "bar.cpp" "lower\bar.cpp" "other.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\other.exe"
        -@del /f/q "$(INSTALLDIR)\other.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\build_exe\$(NULL)" mkdir "Release\build_exe"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /I "." /D NDEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\other.exe"
LINK32_OBJS= \
	"$(INTDIR)\dotdot\src\bar.res" \
	"$(INTDIR)\dotdot\src\foo.obj" \
	"$(INTDIR)\bar.obj" \
	"$(INTDIR)\lower\bar.obj" \
	"$(INTDIR)\other.obj"

"$(INSTALLDIR)\other.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\other.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\other.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INSTALLDIR=Static_Debug
INTDIR=Static_Debug\build_exe\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\other.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.build_exe.dep" "..\src\foo.cpp" "bar.cpp" "lower\bar.cpp" "other.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\other.pdb"
        -@del /f/q "$(INSTALLDIR)\other.exe"
        -@del /f/q "$(INSTALLDIR)\other.ilk"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\build_exe\$(NULL)" mkdir "Static_Debug\build_exe"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "." /D _DEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\other.pdb" /machine:I386 /out:"$(INSTALLDIR)\other.exe"
LINK32_OBJS= \
	"$(INTDIR)\dotdot\src\bar.res" \
	"$(INTDIR)\dotdot\src\foo.obj" \
	"$(INTDIR)\bar.obj" \
	"$(INTDIR)\lower\bar.obj" \
	"$(INTDIR)\other.obj"

"$(INSTALLDIR)\other.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\other.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\other.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INSTALLDIR=Static_Release
INTDIR=Static_Release\build_exe\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\other.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.build_exe.dep" "..\src\foo.cpp" "bar.cpp" "lower\bar.cpp" "other.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\other.exe"
        -@del /f/q "$(INSTALLDIR)\other.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\build_exe\$(NULL)" mkdir "Static_Release\build_exe"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /I "." /D NDEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\other.exe"
LINK32_OBJS= \
	"$(INTDIR)\dotdot\src\bar.res" \
	"$(INTDIR)\dotdot\src\foo.obj" \
	"$(INTDIR)\bar.obj" \
	"$(INTDIR)\lower\bar.obj" \
	"$(INTDIR)\other.obj"

"$(INSTALLDIR)\other.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\other.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\other.exe.manifest" -outputresource:$@;1

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
!IF EXISTS("Makefile.build_exe.dep")
!INCLUDE "Makefile.build_exe.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="..\src\foo.cpp"

"$(INTDIR)\dotdot\src\foo.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\dotdot\src\$(NULL)" mkdir "$(INTDIR)\dotdot\src\"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\dotdot\src\foo.obj" $(SOURCE)

SOURCE="bar.cpp"

"$(INTDIR)\bar.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\bar.obj" $(SOURCE)

SOURCE="lower\bar.cpp"

"$(INTDIR)\lower\bar.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\lower\$(NULL)" mkdir "$(INTDIR)\lower\"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\lower\bar.obj" $(SOURCE)

SOURCE="other.cpp"

"$(INTDIR)\other.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\other.obj" $(SOURCE)

SOURCE="..\src\bar.rc"

"$(INTDIR)\dotdot\src\bar.res" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\dotdot\src\$(NULL)" mkdir "$(INTDIR)\dotdot\src\"
	$(RSC) /l 0x409 /fo"$(INTDIR)\dotdot\src\bar.res" /d NDEBUG /i "." $(SOURCE)



!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.build_exe.dep")
	@echo Using "Makefile.build_exe.dep"
!ELSE
	@echo Warning: cannot find "Makefile.build_exe.dep"
!ENDIF
!ENDIF


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
!MESSAGE NMAKE /f "Makefile.qt_uic_moc.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY = "demo.h" "demo.cpp" "demo_moc.cpp"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INSTALLDIR=.
INTDIR=Debug\qt_uic_moc\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\main.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"$(QTDIR)\include" -D_DEBUG -DWIN32 -D_CONSOLE -DQT_THREAD_SUPPORT -f "Makefile.qt_uic_moc.dep" "demo.cpp" "demo_moc.cpp" "main.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\main.pdb"
        -@del /f/q "$(INSTALLDIR)\main.exe"
        -@del /f/q "$(INSTALLDIR)\main.ilk"
        -@del /f/q "demo.h"
        -@del /f/q "demo.cpp"
        -@del /f/q "demo_moc.cpp"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\qt_uic_moc\$(NULL)" mkdir "Debug\qt_uic_moc"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "$(QTDIR)\include" /D _DEBUG /D WIN32 /D _CONSOLE /D QT_THREAD_SUPPORT /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO qt-mt$(QT_VERSION).lib /libpath:"." /libpath:"$(QTDIR)\lib" /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\main.pdb" /machine:I386 /out:"$(INSTALLDIR)\main.exe"
LINK32_OBJS= \
	"$(INTDIR)\demo.obj" \
	"$(INTDIR)\demo_moc.obj" \
	"$(INTDIR)\main.obj"

"$(INSTALLDIR)\main.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\main.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\main.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=Release
INSTALLDIR=Release
INTDIR=Release\qt_uic_moc\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\main.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"$(QTDIR)\include" -DNDEBUG -DWIN32 -D_CONSOLE -DQT_THREAD_SUPPORT -f "Makefile.qt_uic_moc.dep" "demo.cpp" "demo_moc.cpp" "main.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\main.exe"
        -@del /f/q "$(INSTALLDIR)\main.ilk"
        -@del /f/q "demo.h"
        -@del /f/q "demo.cpp"
        -@del /f/q "demo_moc.cpp"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\qt_uic_moc\$(NULL)" mkdir "Release\qt_uic_moc"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /I "$(QTDIR)\include" /D NDEBUG /D WIN32 /D _CONSOLE /D QT_THREAD_SUPPORT /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO qt-mt$(QT_VERSION).lib /libpath:"." /libpath:"$(QTDIR)\lib" /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\main.exe"
LINK32_OBJS= \
	"$(INTDIR)\demo.obj" \
	"$(INTDIR)\demo_moc.obj" \
	"$(INTDIR)\main.obj"

"$(INSTALLDIR)\main.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\main.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\main.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INSTALLDIR=Static_Debug
INTDIR=Static_Debug\qt_uic_moc\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\main.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"$(QTDIR)\include" -D_DEBUG -DWIN32 -D_CONSOLE -DQT_THREAD_SUPPORT -f "Makefile.qt_uic_moc.dep" "demo.cpp" "demo_moc.cpp" "main.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\main.pdb"
        -@del /f/q "$(INSTALLDIR)\main.exe"
        -@del /f/q "$(INSTALLDIR)\main.ilk"
        -@del /f/q "demo.h"
        -@del /f/q "demo.cpp"
        -@del /f/q "demo_moc.cpp"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\qt_uic_moc\$(NULL)" mkdir "Static_Debug\qt_uic_moc"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "$(QTDIR)\include" /D _DEBUG /D WIN32 /D _CONSOLE /D QT_THREAD_SUPPORT /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO qt-mt$(QT_VERSION).lib /libpath:"." /libpath:"$(QTDIR)\lib" /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\main.pdb" /machine:I386 /out:"$(INSTALLDIR)\main.exe"
LINK32_OBJS= \
	"$(INTDIR)\demo.obj" \
	"$(INTDIR)\demo_moc.obj" \
	"$(INTDIR)\main.obj"

"$(INSTALLDIR)\main.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\main.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\main.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INSTALLDIR=Static_Release
INTDIR=Static_Release\qt_uic_moc\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\main.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"$(QTDIR)\include" -DNDEBUG -DWIN32 -D_CONSOLE -DQT_THREAD_SUPPORT -f "Makefile.qt_uic_moc.dep" "demo.cpp" "demo_moc.cpp" "main.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\main.exe"
        -@del /f/q "$(INSTALLDIR)\main.ilk"
        -@del /f/q "demo.h"
        -@del /f/q "demo.cpp"
        -@del /f/q "demo_moc.cpp"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\qt_uic_moc\$(NULL)" mkdir "Static_Release\qt_uic_moc"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /I "$(QTDIR)\include" /D NDEBUG /D WIN32 /D _CONSOLE /D QT_THREAD_SUPPORT /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO qt-mt$(QT_VERSION).lib /libpath:"." /libpath:"$(QTDIR)\lib" /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\main.exe"
LINK32_OBJS= \
	"$(INTDIR)\demo.obj" \
	"$(INTDIR)\demo_moc.obj" \
	"$(INTDIR)\main.obj"

"$(INSTALLDIR)\main.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\main.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\main.exe.manifest" -outputresource:$@;1

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
!IF EXISTS("Makefile.qt_uic_moc.dep")
!INCLUDE "Makefile.qt_uic_moc.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="demo.cpp"

"$(INTDIR)\demo.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\demo.obj" $(SOURCE)

SOURCE="demo_moc.cpp"

"$(INTDIR)\demo_moc.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\demo_moc.obj" $(SOURCE)

SOURCE="main.cpp"

"$(INTDIR)\main.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\main.obj" $(SOURCE)

SOURCE="demo.ui"

InputPath=demo.ui

"demo.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	$(QTDIR)\bin\uic  "$(InputPath)" -o "demo.h"
<<

SOURCE="demo.ui"

InputPath=demo.ui

"demo.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	$(QTDIR)\bin\uic -impl "demo.h" "$(InputPath)" -o "demo.cpp"
<<

SOURCE="demo.h"

InputPath=demo.h

"demo_moc.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	$(QTDIR)\bin\moc  "$(InputPath)" -o "demo_moc.cpp"
<<


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.qt_uic_moc.dep")
	@echo Using "Makefile.qt_uic_moc.dep"
!ELSE
	@echo Warning: cannot find "Makefile.qt_uic_moc.dep"
!ENDIF
!ENDIF


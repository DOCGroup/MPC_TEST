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
!MESSAGE NMAKE /f "Makefile.support_lib.mak" CFG="Win32 Debug"
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

OUTDIR=lib
INTDIR=Debug\support_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "lib\support_libd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DBASIC_BUILD_DLL -f "Makefile.support_lib.dep" "arch.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\support_libd.pdb"
        -@del /f/q "lib\support_libd.dll"
        -@del /f/q "$(OUTDIR)\support_libd.lib"
        -@del /f/q "$(OUTDIR)\support_libd.exp"
        -@del /f/q "$(OUTDIR)\support_libd.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\support_lib\$(NULL)" mkdir "Debug\support_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /D BASIC_BUILD_DLL /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:"lib\support_libd.pdb" /machine:I386 /out:"lib\support_libd.dll" /implib:"$(OUTDIR)\support_libd.lib"
LINK32_OBJS= \
	"$(INTDIR)\arch.obj" \
	"$(INTDIR)\foo.obj"

"lib\support_libd.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "lib\support_libd.dll.manifest" mt.exe -manifest "lib\support_libd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=lib
INTDIR=Release\support_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "lib\support_lib.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DBASIC_BUILD_DLL -f "Makefile.support_lib.dep" "arch.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "lib\support_lib.dll"
        -@del /f/q "$(OUTDIR)\support_lib.lib"
        -@del /f/q "$(OUTDIR)\support_lib.exp"
        -@del /f/q "$(OUTDIR)\support_lib.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\support_lib\$(NULL)" mkdir "Release\support_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D BASIC_BUILD_DLL /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:"lib\support_lib.dll" /implib:"$(OUTDIR)\support_lib.lib"
LINK32_OBJS= \
	"$(INTDIR)\arch.obj" \
	"$(INTDIR)\foo.obj"

"lib\support_lib.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "lib\support_lib.dll.manifest" mt.exe -manifest "lib\support_lib.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=lib
INTDIR=Static_Debug\support_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\support_libsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DBASIC_AS_STATIC_LIBS -f "Makefile.support_lib.dep" "arch.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\support_libsd.lib"
        -@del /f/q "$(OUTDIR)\support_libsd.exp"
        -@del /f/q "$(OUTDIR)\support_libsd.ilk"
	-@del /f/q "lib\support_libsd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\support_lib\$(NULL)" mkdir "Static_Debug\support_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd"lib\support_libsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D BASIC_AS_STATIC_LIBS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"lib\support_libsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\arch.obj" \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\support_libsd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\support_libsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\support_libsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=lib
INTDIR=Static_Release\support_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\support_libs.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DBASIC_AS_STATIC_LIBS -f "Makefile.support_lib.dep" "arch.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\support_libs.lib"
        -@del /f/q "$(OUTDIR)\support_libs.exp"
        -@del /f/q "$(OUTDIR)\support_libs.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\support_lib\$(NULL)" mkdir "Static_Release\support_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D BASIC_AS_STATIC_LIBS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"lib\support_libs.lib"
LINK32_OBJS= \
	"$(INTDIR)\arch.obj" \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\support_libs.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\support_libs.lib.manifest" mt.exe -manifest "$(OUTDIR)\support_libs.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.support_lib.dep")
!INCLUDE "Makefile.support_lib.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="arch.cpp"

"$(INTDIR)\arch.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\arch.obj" $(SOURCE)

SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.support_lib.dep")
	@echo Using "Makefile.support_lib.dep"
!ELSE
	@echo Warning: cannot find "Makefile.support_lib.dep"
!ENDIF
!ENDIF


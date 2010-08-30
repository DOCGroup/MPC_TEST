# Microsoft Developer Studio Generated NMAKE File
!IF "$(CFG)" == ""
CFG=Win32 Debug
!MESSAGE No configuration specified. Defaulting to Win32 Debug.
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" || "$(CFG)" == "Win32 MFC Release" || "$(CFG)" == "Win32 MFC Debug"
!ELSE
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "Makefile.simple.mak" CFG="Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Static Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Static Release" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 MFC Release" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 MFC Debug" (based on "Win32 (x86) Console Application")
!MESSAGE
!ERROR An invalid configuration was specified.
!ENDIF

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF

!IF "$(DEPGEN)" == ""
!IF EXISTS("$(MPC_ROOT)/depgen.pl")
DEPGEN=perl $(MPC_ROOT)/depgen.pl -i -t nmake
!ELSEIF EXISTS("$(DEPGEN_ROOT)/depgen.pl")
DEPGEN=perl $(DEPGEN_ROOT)/depgen.pl -i -t nmake
!ELSEIF EXISTS("$(ACE_ROOT)/bin/depgen.pl")
DEPGEN=perl $(ACE_ROOT)/bin/depgen.pl -i -t nmake
!ENDIF
!ENDIF

GENERATED_DIRTY =

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INSTALLDIR=.
INTDIR=Debug\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\simple.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"houses" -I"houses\of" -I"houses\of\the" -I"houses\of\the\holy" -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.simple.dep" ".\houses\simple.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\simple.pdb"
	-@del /f/q "$(INSTALLDIR)\simple.exe"
	-@del /f/q "$(INSTALLDIR)\simple.ilk"
	-echo It is clean. & echo Really, it is.

"$(INTDIR)" :
	if not exist "Debug\$(NULL)" mkdir "Debug"
	if not exist "Debug\simple\$(NULL)" mkdir "Debug\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D _DEBUG /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO simple_libd.lib other_libd.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\simple.pdb" /machine:I386 /out:"$(INSTALLDIR)\simple.exe"
LINK32_OBJS= \
	"$(INTDIR)\simple.res" \
	"$(INTDIR)\.\houses\simple.obj"

"$(INSTALLDIR)\simple.exe" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(INSTALLDIR)\simple.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\simple.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=Release
INSTALLDIR=Release
INTDIR=Release\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\simple.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"houses" -I"houses\of" -I"houses\of\the" -I"houses\of\the\holy" -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.simple.dep" ".\houses\simple.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\simple.exe"
	-@del /f/q "$(INSTALLDIR)\simple.ilk"
	-echo It is clean. & echo Really, it is.

"$(INTDIR)" :
	if not exist "Release\$(NULL)" mkdir "Release"
	if not exist "Release\simple\$(NULL)" mkdir "Release\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D NDEBUG /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO simple_lib.lib other_lib.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\simple.exe"
LINK32_OBJS= \
	"$(INTDIR)\simple.res" \
	"$(INTDIR)\.\houses\simple.obj"

"$(INSTALLDIR)\simple.exe" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(INSTALLDIR)\simple.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\simple.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INSTALLDIR=Static_Debug
INTDIR=Static_Debug\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\simple.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"houses" -I"houses\of" -I"houses\of\the" -I"houses\of\the\holy" -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.simple.dep" ".\houses\simple.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\simple.pdb"
	-@del /f/q "$(INSTALLDIR)\simple.exe"
	-@del /f/q "$(INSTALLDIR)\simple.ilk"
	-echo It is clean. & echo Really, it is.

"$(INTDIR)" :
	if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
	if not exist "Static_Debug\simple\$(NULL)" mkdir "Static_Debug\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D _DEBUG /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO simple_libsd.lib other_libsd.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\simple.pdb" /machine:I386 /out:"$(INSTALLDIR)\simple.exe"
LINK32_OBJS= \
	"$(INTDIR)\simple.res" \
	"$(INTDIR)\.\houses\simple.obj"

"$(INSTALLDIR)\simple.exe" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(INSTALLDIR)\simple.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\simple.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INSTALLDIR=Static_Release
INTDIR=Static_Release\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\simple.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"houses" -I"houses\of" -I"houses\of\the" -I"houses\of\the\holy" -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.simple.dep" ".\houses\simple.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\simple.exe"
	-@del /f/q "$(INSTALLDIR)\simple.ilk"
	-echo It is clean. & echo Really, it is.

"$(INTDIR)" :
	if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
	if not exist "Static_Release\simple\$(NULL)" mkdir "Static_Release\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D NDEBUG /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO simple_libs.lib other_libs.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\simple.exe"
LINK32_OBJS= \
	"$(INTDIR)\simple.res" \
	"$(INTDIR)\.\houses\simple.obj"

"$(INSTALLDIR)\simple.exe" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(INSTALLDIR)\simple.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\simple.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 MFC Release"

OUTDIR=MFC_Release
INSTALLDIR=MFC_Release
INTDIR=MFC_Release\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\simple.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"houses" -I"houses\of" -I"houses\of\the" -I"houses\of\the\holy" -DNDEBUG -D_AFXDLL -DACE_HAS_MFC=1 -DACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER -DWIN32 -D_CONSOLE -f "Makefile.simple.dep" ".\houses\simple.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\simple.exe"
	-@del /f/q "$(INSTALLDIR)\simple.ilk"
	-echo It is clean. & echo Really, it is.

"$(INTDIR)" :
	if not exist "MFC_Release\$(NULL)" mkdir "MFC_Release"
	if not exist "MFC_Release\simple\$(NULL)" mkdir "MFC_Release\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D NDEBUG /D _AFXDLL /D ACE_HAS_MFC=1 /D ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO simple_libmfc.lib other_libmfc.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:windows  /machine:I386 /out:"$(INSTALLDIR)\simple.exe"
LINK32_OBJS= \
	"$(INTDIR)\simple.res" \
	"$(INTDIR)\.\houses\simple.obj"

"$(INSTALLDIR)\simple.exe" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(INSTALLDIR)\simple.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\simple.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 MFC Debug"

OUTDIR=MFC_Debug
INSTALLDIR=MFC_Debug
INTDIR=MFC_Debug\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\simple.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"houses" -I"houses\of" -I"houses\of\the" -I"houses\of\the\holy" -D_DEBUG -D_AFXDLL -DACE_HAS_MFC=1 -DACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER -DWIN32 -D_CONSOLE -f "Makefile.simple.dep" ".\houses\simple.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\simple.pdb"
	-@del /f/q "$(INSTALLDIR)\simple.exe"
	-@del /f/q "$(INSTALLDIR)\simple.ilk"
	-echo It is clean. & echo Really, it is.

"$(INTDIR)" :
	if not exist "MFC_Debug\$(NULL)" mkdir "MFC_Debug"
	if not exist "MFC_Debug\simple\$(NULL)" mkdir "MFC_Debug\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D _DEBUG /D _AFXDLL /D ACE_HAS_MFC=1 /D ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO simple_libmfcd.lib other_libmfcd.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:windows /debug /pdb:"$(INSTALLDIR)\simple.pdb" /machine:I386 /out:"$(INSTALLDIR)\simple.exe"
LINK32_OBJS= \
	"$(INTDIR)\simple.res" \
	"$(INTDIR)\.\houses\simple.obj"

"$(INSTALLDIR)\simple.exe" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(INSTALLDIR)\simple.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\simple.exe.manifest" -outputresource:$@;1

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
!IF EXISTS("Makefile.simple.dep")
!INCLUDE "Makefile.simple.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" || "$(CFG)" == "Win32 MFC Release" || "$(CFG)" == "Win32 MFC Debug" 
SOURCE=".\houses\simple.cpp"

"$(INTDIR)\.\houses\simple.obj" : $(SOURCE)
	@if not exist "$(INTDIR)\.\houses\$(NULL)" mkdir "$(INTDIR)\.\houses\"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\.\houses\simple.obj" $(SOURCE)

SOURCE="simple.rc"

"$(INTDIR)\simple.res" : $(SOURCE)
	$(RSC) /l 0x409 /fo"$(INTDIR)\simple.res" /i "houses" /i "houses\of" /i "houses\of\the" /i "houses\of\the\holy" $(SOURCE)



!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.simple.dep")
	@echo Using "Makefile.simple.dep"
!ELSE
	@echo Warning: cannot find "Makefile.simple.dep"
!ENDIF
!ENDIF


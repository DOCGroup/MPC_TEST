#!/bin/sh

find . \( -name '.depend.*' -o -name 'Makefile*' -o -name 'GNUmakefile*' -o \
          -name '*.sln' -o -name '*.vcproj' -o -name '*.ds?' -o \
          -name \*.ncb -o -name \*.suo -o -name \*.bor -o -name \*.opt -o \
          -name \*.plg -o -name \*.pdb -o -name \*.lib -o -name \*.dll -o \
          -name .shobj -o -name \*.ins -o -name \*.mak -o -name \*.dep -o \
          -name Debug -o -name Release -o -name Static_Debug -o \
          -name Static_Release -o -name \*.vcw -o -name \*.vcp -o \
          -name \*.o -o -name \*.bmak -o -name \*.bpgr -o -name \*.cbx -o \
          -name \*_workspace.html -o -name \*.csproj -o -name \*.bld -o \
          -name \*.bmake -o -name \*.nmake -o -name \*.icc -o -name \*.vpj -o \
          -name \*.tds -o -name configure.ac.Makefiles -o -name \*.icp -o \
          -name \*.vpw -o -name \*.vbproj -o -name \*.RES -o -name \*.aps -o \
          -name \*.idb -o -name \*.sbr -o -name \*.exp -o -name \*.vcl -o \
          -name \*.vco -o -name \*.vcb -o -name configure.ac -o -name \*.obj -o \
          -name autom4te.cache -o -name AUTHORS -o -name ChangeLog -o \
          -name NEWS -o -name README -o -name aclocal.m4 -o -name config.\* -o \
          -name configure -o -name libtool -o -name m4 -o -name .deps -o \
          -name COPYING -o -name depcomp -o -name INSTALL -o -name \*.gpj -o \
          -name install-sh -o -name ltmain.sh -o -name missing -o \
          -name mkinstalldirs -o -name .libs -o -name \*.lo -o \
          -name \*.la -o -name \*.loT -o -name \*.user -o -name core -o \
          -name core.* -o -name \*.bdsgroup -o -name \*.bdsproj -o \
          -name \*.ilk -o -name \*.pjt -o -name \*.code_composer -o \
          -name \*.int -o -name \*.exe -o -name .cdtproject -o \
          -name .project -o -name .wrmakefile -o -name .wrproject -o \
          -name org.eclipse.core.resources.prefs -o -name wb26projects.lst \) \
        -prune -exec rm -rf {} \;

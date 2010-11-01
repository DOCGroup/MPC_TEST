#!/bin/sh
cd ../..
perl zzz.pl  "Foo.idl" && perl foo.pl  "Foo.idl" && cd cdt_foo/linux-release && ln -sf ../../FooD.cpp . && ln -sf ../../FooD.h . && ln -sf ../../FooD.idl . && ln -sf ../../FooTypeSupportImpl.cpp . && ln -sf ../../FooTypeSupportImpl.h .

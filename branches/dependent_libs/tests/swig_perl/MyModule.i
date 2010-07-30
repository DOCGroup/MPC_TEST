
%module MyModule
%{
#include "hello.h"
%}

%typemap(in) long& (long rvalue) {
  if (SvROK($input)) {
    rvalue = ($*1_ltype)SvIV(SvRV($input));
    $1 = &rvalue;
  }
  else {
    SWIG_croak("Type error in argument $argnum of $symname. Expected $1_mangle");
  }
}

%typemap(in) Fig& = long&;

%include "hello.h"


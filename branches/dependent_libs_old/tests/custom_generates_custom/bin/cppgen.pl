#!/usr/bin/perl -w

use strict;
use File::Basename;

my($in)   = shift;
my($oopt) = shift;
my($file) = shift;

my($base) = $file;
if (!defined $base) {
  $base = $in;
}
$base =~ s/\.[^\.]+$//;
$file = "$base.cpp";

my($header) = "$base.h";
$base =~ s/^\.[\/\\]//;
$base =~ s/[\.\/\\\s]/_/g;

open(HH, ">$header");
print HH "void $base", "_foo();\n";
close(HH);

$header = basename($header);

if (open(CH, ">$file")) {
  print CH "#include \"$header\"\n",
           "#include <stdio.h>\n\n",
           "void $base" . "_foo() {\n",
           "  printf(\"Generated source\\n\");\n",
           "}\n";

  close(CH);
}

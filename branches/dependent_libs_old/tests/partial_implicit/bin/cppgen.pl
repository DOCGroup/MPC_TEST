#!/usr/bin/perl -w

use strict;
use File::Basename;

my $in   = shift;
my $oopt = shift;
my $file = shift;

my $base = $file;
if (!defined $base) {
  $base = $in;
}
$base = basename($base);
$base =~ s/\.[^\.]+$//;
$file = "down/$base.cpp";

my $header = "down/$base.h";
my $inline = "down/$base.inl";
$base =~ s/^\.[\/\\]//;
$base =~ s/[\/\\\s]/_/g;

mkdir('down');

open(HH, ">$header");
print HH "void $base", "_foo();\n";
close(HH);

open(IH, ">$inline");
close(IH);

if (open(CH, ">$file")) {
  print CH "#include \"$header\"\n",
           "#include <stdio.h>\n\n",
           "void $base" . "_foo() {\n",
           "  printf(\"Generated source\\n\");\n",
           "}\n";

  close(CH);
}

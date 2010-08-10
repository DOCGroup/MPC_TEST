#!/usr/bin/perl -w

use strict;
use FileHandle;

sub createFiles {
  my $file = shift;
  my $base = $file;
  my $fh   = new FileHandle();
  $base =~ s/\.idl$//;

  if (open($fh, ">${base}TypeSupportImpl.cpp")) {
    close($fh);
  }
  if (open($fh, ">${base}TypeSupportImpl.h")) {
    close($fh);
  }
}

foreach my $arg (@ARGV) {
  createFiles($arg);
}

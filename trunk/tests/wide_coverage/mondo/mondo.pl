#!/usr/bin/perl -w

# ************************************************************
#      Author: Chad Elliott
# Description: User interface for the ReaderGen module.
#        Date: 6/29/2005
# ************************************************************

use strict;
use Cwd;
use Config;
use File::Basename;

my($execPath) = getExecutePath($0);
unshift(@INC, $execPath . '/modules');

require ReaderGen;

# ************************************************************
# Subroutine Section
# ************************************************************

sub which {
  my($prog)   = shift;
  my($exec)   = $prog;
  my($part)   = '';
  my($envSep) = $Config{'path_sep'};

  if (defined $ENV{'PATH'}) {
    foreach $part (split(/$envSep/, $ENV{'PATH'})) {
      $part .= "/$prog";
      if ( -x $part ) {
        $exec = $part;
        last;
      }
    }
  }

  return $exec;
}


sub getExecutePath {
  my($prog) = shift;
  my($loc)  = '';

  if ($prog ne basename($prog)) {
    if ($prog =~ /^[\/\\]/ ||
        $prog =~ /^[A-Za-z]:[\/\\]?/) {
      $loc = dirname($prog);
    }
    else {
      $loc = getcwd() . '/' . dirname($prog);
    }
  }
  else {
    $loc = dirname(which($prog));
  }

  if ($loc eq '.') {
    $loc = getcwd();
  }

  if ($loc ne '') {
    $loc .= '/';
  }

  return $loc;
}

# ************************************************************
# Main Section
# ************************************************************

if (!defined $ARGV[0]) {
  print "Usage: ", basename($0), " [-fake] [input file]\n";
  exit(1);
}

if (defined $ARGV[0] && $ARGV[0] eq '-fake') {
  shift(@ARGV);
}

my($reader) = new ReaderGen();
exit($reader->generate($ARGV[0]));

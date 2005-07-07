#!/usr/bin/perl -w

use strict;
use FileHandle;
use File::Basename;

my(%types)  = ('source'   => {'pre_extension' => {'A' => 1, 'B' => 1},
                              'outputext'     => '.cpp'},
               'header'   => {'pre_extension' => {'A' => 1, 'B' => 1, 'B_T' => 1},
                              'outputext'     => '.h'},
               'inline'   => {'pre_extension' => {'A' => 1, 'B' => 1, 'B_T' => 1},
                              'outputext'     => '.inl'},
               'template' => {'outputext'     => 'B_T.cpp'},
              );

sub usageAndExit {
  my($msg)    = shift;
  my($status) = 0;
  if (defined $msg) {
    print "$msg\n";
    $status++;
  }
  print "Usage: ", basename($0), " [-GA] [-Sc] [input files...]\n";
  exit($status);
}

my($pre_filename) = 'zar_';
my($status) = 0;
my(@files)  = ();

for(my $i = 0; $i <= $#ARGV; $i++) {
  if ($ARGV[$i] eq '-GA') {
    $types{'source'}->{'pre_extension'}->{'C'} = 1;
  }
  elsif ($ARGV[$i] eq '-Sc') {
    delete $types{'header'}->{'pre_extension'}->{'B_T'};
    delete $types{'inline'}->{'pre_extension'}->{'B_T'};
    delete $types{'template'}->{'outputext'};
  }
  elsif ($ARGV[$i] =~ /^-/) {
    usageAndExit("Invalid option: $ARGV[$i]");
  }
  else {
    push(@files, $ARGV[$i]);
  }
}

if (!defined $files[0]) {
  usageAndExit();
}

foreach my $file (@files) {
  if (-r $file) {
    foreach my $type (keys %types) {
      if (defined $types{$type}->{'outputext'}) {
        my(@pre_ext) = ('');
        if (defined $types{$type}->{'pre_extension'}) {
          @pre_ext = keys %{$types{$type}->{'pre_extension'}};
        }
        foreach my $pre_ext (@pre_ext) {
          my($fh) = new FileHandle();
          my($output) = dirname($file) . '/' .
                        $pre_filename . basename($file);
          $output =~ s/\.[^\.]+$//;
          $output .= $pre_ext . $types{$type}->{'outputext'};

          if (open($fh, ">$output")) {
            close($fh);
          }
          else {
            print STDERR "Unable to write $output\n";
            $status++;
          }
        }
      }
    }
  }
  else {
    print STDERR "Unable to read $file\n";
    $status++;
  }
}

exit($status);

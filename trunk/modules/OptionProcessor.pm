package OptionProcessor;

# ******************************************************************
# Description : Class to process options and automatically generate a usage
# Author      : Chad Elliott
# Create Date : 6/24/2005
# ******************************************************************

# ******************************************************************
# Pragma Section
# ******************************************************************

use strict;
use Getopt::Long;
use File::Basename;

# ******************************************************************
# Subroutine Section
# ******************************************************************

sub new {
  my($class)   = shift;
  my($name)    = shift;
  my($options) = shift;
  my($desc)    = shift;
  my($info)    = shift;
  my($self)    = bless {'name'        => $name,
                        'options'     => $options,
                        'description' => $desc,
                        'info'        => $info,
                       }, $class;

  if (!exists $$options{'help'}) {
    my($usage) = undef;
    $$options{'help'} = \$usage;
  }

  return $self;
}


sub process {
  my($self)     = shift;
  my($generror) = shift;

  if (defined $self->{'options'}) {
    my($result) = GetOptions(%{$self->{'options'}});
    my($usage)  = undef;

    ## Find the help option
    foreach my $key (keys %{$self->{'options'}}) {
      if ($key eq 'help') {
        $usage = $self->{'options'}->{$key};
        last;
      }
    }

    ## Check for usage
    if ((defined $usage && $$usage) || !$result) {
      $self->usageAndExit($generror);
    }
  }

  if (!$self->verify()) {
    $self->usageAndExit($generror);
  }
}


sub usageAndExit {
  my($self)     = shift;
  my($generror) = shift;
  my($desc)     = $self->{'description'};
  my($str)      = 'Usage: ' . basename($self->{'name'});
  my($initial)  = length($str);
  my($length)   = $initial;
  my($maxLine)  = 78;
  my($status)   = 0;

  if (defined $generror) {
    ++$status;
    print "ERROR: $generror.\n";
  }

  print $str;

  foreach my $key (sort keys %{$self->{'options'}}) {
    my($opt, $type) = split(/=/, $key);
    my($str) = " [--$opt" . (defined $type ? " <$opt>" : '') . ']';
    my($len) = length($str);
    if ($length + $len > $maxLine) {
      print "\n" . (' ' x $initial);
      $length = $initial;
    }
    print $str;
    $length += $len;
  }
  print "\n";

  if (defined $desc) {
    my($max) = 0;
    foreach my $key (sort keys %$desc) {
      my($len) = length($key);
      if ($len > $max) {
        $max = $len;
      }
    }
    if ($max > 0) {
      print "\n";
    }

    foreach my $key (sort keys %$desc) {
      my($len) = length($key);
      my($str) = "       $key" . ($len < $max ? ' ' x ($max - $len) : '') .
                 '  ';
      $length = length($str);

      print $str;

      $length++;
      if (length($$desc{$key}) + $length > $maxLine) {
        my($part) = $$desc{$key};
        while(length($part) + $length > $maxLine) {
          my(@words) = split(/\s+/, $part);
          $part = '';
          foreach my $word (@words) {
            if (length($word) + length($part) + $length > $maxLine) {
              my($space) = '         ' . (' ' x $max);
              $part =~ s/\s+$//;
              print "$part\n$space";
              $part = '';
              $length = length($space) + 1;
            }
            $part .= "$word ";
          }
        }
       $part =~ s/\s+$//;
        print "$part.\n";
      }
      else {
        print "$$desc{$key}.\n";
      }
    }
  }

  my($geninfo) = $self->{'info'};
  if (defined $geninfo) {
    print "\n";
    $length = 0;
    if (length($geninfo) + $length > $maxLine) {
      my($part) = $geninfo;
      while(length($part) + $length > $maxLine) {
        my(@words) = split(/\s+/, $part);
        $part = '';
        foreach my $word (@words) {
          if (length($word) + length($part) + $length > $maxLine) {
            $part =~ s/\s+$//;
            print "$part\n";
            $part = '';
            $length = 0;
          }
          $part .= "$word ";
        }
      }
     $part =~ s/\s+$//;
      print "$part\n";
    }
    else {
      print "$geninfo\n";
    }
  }
  exit($status);
}


sub verify {
  #my($self) = shift;
  return 1;
}

1;

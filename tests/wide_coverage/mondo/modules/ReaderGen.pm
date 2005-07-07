package ReaderGen;

# ******************************************************************
# Description : Generate each MPC builtin file type (except resource)
# Author      : Chad Elliott
# Create Date : 6/29/2005
# ******************************************************************

# ******************************************************************
# Pragma Section
# ******************************************************************

use strict;
use FileHandle;

# ************************************************************
# Subroutine Section
# ************************************************************

sub new {
  my($class) = shift;
  my($self)  = bless {'ordered' => ['source', 'header', 'inline',
                                    'documentation', 'template' ],
                      'types' => {},
                     }, $class;
  return $self;
}


sub generate {
  my($self)   = shift;
  my($file)   = shift;
  my($fh)     = new FileHandle();
  my($status) = 0;

  if (open($fh, $file)) {
    foreach my $type (@{$self->{'ordered'}}) {
      $self->{'types'}->{$type} = undef;
    }

    while(<$fh>) {
      if (/(.*):\s*(.*)/) {
        my($key)  = $1;
        my($name) = $2;
        $key =~ s/^\s+//;
        $key =~ s/\s+$//;
        $name =~ s/^\s+//;
        $name =~ s/\s+$//;
        if (exists $self->{'types'}->{$key}) {
          $self->{'types'}->{$key} = $name;
        }
        else {
          ++$status;
          last;
        }
      }
    }
    close($fh);

    if ($status == 0) {
      my($max) = scalar(@{$self->{'ordered'}});
      for(my $i = 0; $i < $max; ++$i) {
        if (defined $self->{'types'}->{$self->{'ordered'}->[$i]}) {
          my($oh) = new FileHandle();
          if (open($oh, ">$self->{'types'}->{$self->{'ordered'}->[$i]}")) {
            if (defined $self->{'ordered'}->[$i + 1] &&
                defined $self->{'types'}->{$self->{'ordered'}->[$i + 1]}) {
              print $oh "#include \"",
                        $self->{'types'}->{$self->{'ordered'}->[$i + 1]},
                        "\"\n";
            }
            close($oh);
          }
          else {
            ++$status;
            last;
          }
        }
      }
    }
  }
  else {
    ++$status;
  }

  return $status;
}


1;

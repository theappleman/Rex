#
# (c) Jan Gehring <jan.gehring@gmail.com>
#
# vim: set ts=2 sw=2 tw=0:
# vim: set expandtab:

package Rex::Inventory::SMBios::BaseBoard;

use strict;
use warnings;

use Rex::Inventory::SMBios::Section;
use base qw(Rex::Inventory::SMBios::Section);

__PACKAGE__->section("base board");

__PACKAGE__->has(
  [
    'Manufacturer', 'Serial Number',
    'Version', { from => 'Product', key => 'Product Name' }
  ],
  1
);

sub new {
  my $that  = shift;
  my $proto = ref($that) || $that;
  my $self  = $that->SUPER::new(@_);

  bless( $self, $proto );

  return $self;
}

1;


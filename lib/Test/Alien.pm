package Test::Alien;

use strict;
use warnings;

use base 'Exporter';
our @EXPORT = qw/has_symbol_anywhere/;

use DynaLoader;
use Test::Builder;

my $tb = Test::Builder->new;

sub has_symbol_anywhere {
  my ($symbol, $name) = @_;

  if (DynaLoader::dl_find_symbol_anywhere($symbol)) {
    $tb->ok(1, $name);
  } else {
    $tb->ok(0, $name);
    $tb->diag( "    Could not find symbol $symbol" );
  }
}


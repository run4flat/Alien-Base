use strict;
use warnings;

use Test::More;
use Test::Builder::Tester;

use Test::Alien;

test_out('not ok 1');
has_symbol_anywhere('somesymbol');
test_test('find somesymbol');

done_testing;


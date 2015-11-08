use Test;
use POSIX;

plan 4;

{
  my $egid = getegid();

  ok(1, 'Called getegid()');

  ok($egid.defined, '$egid is defined');

  ok($egid.isa(Int), '$egid is an Int');

  ok($egid == +$*GROUP, '$egid matches current $*GROUP');
}

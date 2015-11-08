use Test;
use POSIX;

plan 4;

{
  my $euid = geteuid();

  ok(1, 'Called geteuid()');

  ok($euid.defined, '$euid is defined');

  ok($euid.isa(Int), '$euid is an Int');

  ok($euid == +$*USER, '$euid matches current $*USER');
}

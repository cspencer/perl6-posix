use Test;
use POSIX;

plan 1;

{
  my $uid = getuid();
  ok(1, 'Called getuid()');
}

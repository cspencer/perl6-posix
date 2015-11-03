use Test;
use POSIX;

plan 1;

{
  my $egid = getegid();
  ok(1, 'Called getegid()');
}

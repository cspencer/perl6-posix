use Test;
use POSIX;

plan 1;

{
  my $pass = getpwent();
  ok(1, 'Called getpwent()');
}

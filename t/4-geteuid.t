use Test;
use POSIX;

plan 1;

{
  my $euid = geteuid();
  ok(1, 'Called geteuid()');
}

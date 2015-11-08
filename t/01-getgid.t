use Test;
use POSIX;

plan 1;

{
  my $gid = getgid();
  ok(1, 'Called getgid()');
}

use Test;
use POSIX;

plan 1;

{
  my $uid = POSIX::getuid();
  ok(1, 'Got UID');
}

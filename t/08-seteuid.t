use Test;
use POSIX;

plan 1;

{
  my $euid = +$*USER;
  my $res = seteuid($euid);
  ok(1, 'Called seteuid($euid)');
}

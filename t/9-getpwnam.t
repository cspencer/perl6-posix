use Test;
use POSIX;

plan 1;

{
  my $name = ~$*USER;
  my $pass = getpwnam($name);
  ok(1, 'Called getpwnam($name)');
}

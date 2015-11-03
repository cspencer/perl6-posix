use Test;
use POSIX;

plan 1;

{
  my $name  = ~$*GROUP;
  my $group = getgrnam($name);
  ok(1, "Called getgrnam($name)");
}

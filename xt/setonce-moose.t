use strictures 1;
use Test::More;
use Test::Fatal;
use File::Basename;
BEGIN { do(dirname(__FILE__).'/../t/setonce.t'); die $@ if $@ }

{
  package MooseInhSetOnce;
  use Moose;
  extends 'MooSetOnce';
}

{
  package MooseWithSetOnce;
  use Moose;
  with 'MooSetOnceRole';
}

test_object(MooseInhSetOnce->new);
test_object(MooseWithSetOnce->new);
done_testing;


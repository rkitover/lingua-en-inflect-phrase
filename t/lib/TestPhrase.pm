package TestPhrase;
use strict;
use warnings;
use Exporter 'import';
use Test::More;
use Lingua::EN::Inflect::Phrase qw/to_PL to_S/;

our @EXPORT_OK = 'test_phrase';

sub test_phrase {
  my ($singular, $plural) = @_;

  is to_PL($singular), $plural,   "'$singular' pluralizes to '$plural'";
  is to_S($plural),    $singular, "'$plural' singularizes to '$singular'";
  is to_PL($plural),   $plural,   "'$plural' unchanged when pluralized";
  is to_S($singular),  $singular, "'$singular' unchanged when singularized";
}

1;
# vim:et sts=2 sw=2 tw=0:

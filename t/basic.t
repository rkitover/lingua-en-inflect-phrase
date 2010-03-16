use strict;
use warnings;
use Test::More;
use Lingua::EN::Inflect::Phrase qw/to_PL to_S/;

sub test_phrase;

# noun conjunction noun
test_phrase 'green egg and ham', 'green eggs and ham';

# noun preposition
test_phrase 'email from', 'emails from';
test_phrase 'email to', 'emails to';

# noun preposition noun
test_phrase 'mother in law', 'mothers in law';
test_phrase 'prisoner of war', 'prisoners of war';

# noun noun
test_phrase 'book binding', 'book bindings';
test_phrase 'cable tie', 'cable ties';

# noun verb
test_phrase 'station visited', 'stations visited';

# adjective noun that's the same singular and plural
test_phrase 'swedish fish', 'swedish fish';

# fallback
test_phrase 'green', 'greens';

done_testing;

sub test_phrase {
  my ($singular, $plural) = @_;

  is to_PL($singular), $plural,   "'$singular' pluralizes to '$plural'";
  is to_S($plural),    $singular, "'$plural' singularizes to '$singular'";
  is to_PL($plural),   $plural,   "'$plural' unchanged when pluralized";
  is to_S($singular),  $singular, "'$singular' unchanged when singularized";
}

# vim:et sts=2 sw=2 tw=0:

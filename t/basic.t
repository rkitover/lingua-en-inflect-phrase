use strict;
use warnings;
use Test::More;
use lib 't/lib';
use TestPhrase 'test_phrase';

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

# noun x2
test_phrase 'book book', 'book books';

# noun verb
test_phrase 'station visited', 'stations visited';

# adjective noun that's the same singular and plural
test_phrase 'swedish fish', 'swedish fish';

# fallback
test_phrase 'green', 'greens';

# number noun
test_phrase '0 egg', '0 eggs';
test_phrase '1 egg', '1 egg';
test_phrase '2 egg', '2 eggs';
test_phrase '1.5 joule', '1.5 joules';
test_phrase '2.4E4 electron-volt', '2.4E4 electron-volts';

# all other combinations with numbers
test_phrase '1 email from', '1 email from';
test_phrase '2 email from', '2 emails from';
test_phrase '1 mother in law', '1 mother in law';
test_phrase '2 mother in law', '2 mothers in law';
test_phrase '1 book binding', '1 book binding';
test_phrase '2 book binding', '2 book bindings';
test_phrase '1 book book', '1 book book';
test_phrase '2 book book', '2 book books';
test_phrase '1 station visited', '1 station visited';
test_phrase '2 station visited', '2 stations visited';
test_phrase '1 swedish fish', '1 swedish fish';
test_phrase '2 swedish fish', '2 swedish fish';
test_phrase '1 green', '1 green';
test_phrase '2 green', '2 greens';

# ASCII fractions
test_phrase '1 1/2 joule', '1 1/2 joules';
test_phrase '1 and 1/2 joule', '1 and 1/2 joules';
test_phrase '1 and a half joule', '1 and a half joules';
test_phrase '1 and one half joule', '1 and one half joules';

# TODO Unicode fractions

# numbers as words
test_phrase 'zero egg', 'zero eggs';
test_phrase 'one egg', 'one egg';
test_phrase 'the one egg', 'the one egg';
test_phrase 'two egg', 'two eggs';
test_phrase 'one email from', 'one email from';
test_phrase 'the one email from', 'the one email from';
test_phrase 'two email from', 'two emails from';
test_phrase 'one mother in law', 'one mother in law';
test_phrase 'the one mother in law', 'the one mother in law';
test_phrase 'two mother in law', 'two mothers in law';
test_phrase 'one book binding', 'one book binding';
test_phrase 'the one book binding', 'the one book binding';
test_phrase 'two book binding', 'two book bindings';
test_phrase 'one book book', 'one book book';
test_phrase 'the one book book', 'the one book book';
test_phrase 'two book book', 'two book books';
test_phrase 'one station visited', 'one station visited';
test_phrase 'the one station visited', 'the one station visited';
test_phrase 'two station visited', 'two stations visited';
test_phrase 'one swedish fish', 'one swedish fish';
test_phrase 'the one swedish fish', 'the one swedish fish';
test_phrase 'two swedish fish', 'two swedish fish';
test_phrase 'one green', 'one green';
test_phrase 'the one green', 'the one green';
test_phrase 'two green', 'two greens';

done_testing;

# vim:et sts=2 sw=2 tw=0:

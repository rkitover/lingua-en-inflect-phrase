use strict;
use warnings;
use Test::More;
use lib 't/lib';
use TestPhrase 'test_phrase';

# Some bugs I found while working on String::ToIdentifier::EN.

test_phrase '2 dot', '2 dots';
test_phrase '2 acknowledge', '2 acknowledges';
test_phrase '2 at sign', '2 at signs';
test_phrase '2 left brace', '2 left braces';
test_phrase '2 right brace', '2 right braces';
test_phrase '2 negative acknowledge', '2 negative acknowledges';

# Here's one oliver found, "a" singularizes and pluralizes to "some"

test_phrase 'a', 'as';

# Some bugs people found while using Schema::Loader

test_phrase 'person', 'people';
test_phrase 'hero', 'heroes';
test_phrase 'referal log', 'referal logs'; # sic
test_phrase 'referral log', 'referral logs';
test_phrase 'alias', 'aliases';

# this one's from haarg

test_phrase 'status', 'statuses';

done_testing;

# vim:et sts=2 sw=2 tw=0:

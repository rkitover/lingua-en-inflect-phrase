use inc::Module::Install;

name     'Lingua-EN-Inflect-Phrase';
all_from 'lib/Lingua/EN/Inflect/Phrase.pm';
author   'Rafael Kitover <rkitover@cpan.org>';
license  'perl';

build_requires 'Test::More' => '0.94';

requires 'Lingua::EN::Inflect::Number'  => '1.1';
requires 'Lingua::EN::Inflect'          => '1.891';
requires 'Lingua::EN::Tagger'           => '0.15';
requires 'Exporter'                     => '5.63';

readme_from 'lib/Lingua/EN/Inflect/Phrase.pm' => 'clean';

auto_provides;
auto_install;

resources repository =>
    'git://github.com/rkitover/lingua-en-inflect-phrase.git';

WriteAll;

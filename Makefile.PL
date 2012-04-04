use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Archive::Har',
    AUTHOR              => q{David Dick <ddick@cpan.org>},
    VERSION_FROM        => 'lib/Archive/Har.pm',
    ABSTRACT_FROM       => 'lib/Archive/Har.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'English' => 0,
        'Carp' => 0,
	'JSON' => 0,
        'overload' => 0,
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Archive-Har-*' },
);

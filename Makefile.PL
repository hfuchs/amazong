use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'amazong',
    ABSTRACT      => 'Query Amazon for prices (new & used) of list of asins.',
    LICENSE       => 'perl',
    AUTHOR        => 'Hagen Fuchs <code@hfuchs.net>',
    # 2011-03-27, In the old days, I embedded version information in my
    # binary.  Nowadays, I just ask git.
    #VERSION_FROM  => 'bin/<+TODO+>',
    VERSION       => `git describe --tags`,
    EXE_FILES     => [ 'bin/amazong' ],
    # 2012-01-24, I require a specific module version and MakeMaker's
    # got me covered, obviously.
    PREREQ_PM     => {
        "Net::Amazon" => 0.60,
    }
);


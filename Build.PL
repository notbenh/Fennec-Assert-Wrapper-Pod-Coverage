use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Fennec::Assert::Wrapper::Pod::Coverage',
    license             => 'perl',
    dist_author         => q{notbenh <notbenh@cpan.org>},
    dist_version_from   => 'lib/Fennec/Assert/Wrapper/Pod/Coverage.pm',
    build_requires => {
        'Test::More' => 0,
        'Fennec'     => 0,
    },
    add_to_cleanup      => [ 'Fennec-Assert-Wrapper-Pod-Coverage-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();

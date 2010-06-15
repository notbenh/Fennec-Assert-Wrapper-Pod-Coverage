package TEST::Fennec::Assert::Wrapper::Pod::Coverage;
use strict;
use warnings;
use Fennec;

require_or_skip Test::Pod::Coverage;

tests load {
    use_ok( 'Fennec::Assert::Wrapper::Pod::Coverage' );
    can_ok( $self, qw{
                     });
};

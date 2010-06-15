package Fennec::Assert::Wrapper::Pod::Coverage;

use warnings;
use strict;

use Fennec::Assert;
use Fennec::Output::Result;
require Test::Pod::Coverage;

=head1 NAME

Fennec::Assert::Wrapper::Pod::Coverage - Fennec wrapper for L<Test::Pod::Coverage>

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

for my $name ( qw{} ) {
    no strict 'refs';
    next unless Test::Pod::Coverage->can( $name );
    tester( $name => tb_wrapper( \&{ 'Test::Pod::Coverage::' . $name }));
};

1;                                                                                                                                                                                                                                                                                         

=head1 WRAPPED FUNCTIONS

=over 4

=back

=head1 AUTHOR

notbenh, C<< <notbenh at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-fennec-assert-wrapper-pod-coverage at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Fennec-Assert-Wrapper-Pod-Coverage>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Fennec::Assert::Wrapper::Pod::Coverage

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Fennec-Assert-Wrapper-Pod-Coverage>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Fennec-Assert-Wrapper-Pod-Coverage>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Fennec-Assert-Wrapper-Pod-Coverage>

=item * Search CPAN

L<http://search.cpan.org/dist/Fennec-Assert-Wrapper-Pod-Coverage/>

=back

=head1 ACKNOWLEDGEMENTS

=head1 LICENSE AND COPYRIGHT

Copyright 2010 notbenh.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut


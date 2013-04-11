package Archive::Har;

use warnings;
use strict;
use English qw(-no_match_vars);
use Archive::Har::Creator();
use Archive::Har::Browser();
use Archive::Har::Page();
use Archive::Har::Entry();
use JSON();
use Carp();
use overload '""' => "string";

=head1 NAME

Archive::Har - Provides an interface to HTTP Archive (HAR) files

=head1 VERSION

Version 0.04

=cut

our $VERSION = '0.04';

=head1 SYNOPSIS

    use Archive::Har();

    my $http_archive_string = '"log": { "version": "1.1", .... ';
    my $har = Archive::Har->new();
    $har->string($http_archive_string);
    print $har->creator()->name() . ' version ' . $har->creator()->version();
    $har->creator()->name("new name"); # update har
    print $har->browser()->name() . ' version ' . $har->browser()->version();
    foreach my $page = $har->pages()) {
       print "Page Title: " . $page->title() . "\n";

    }
    print $har; # print har in stringified pretty form
    ...

=head1 SUBROUTINES/METHODS

=head2 new

Archive::Har->new() will return a new har object, ready to process http archives

=cut

sub new {
	my ($class, $params) = @_;
	my $self = {};
	$self->{_raise_error} = 1;
	if ((defined $params->{_raise_error}) && ($params->{_raise_error} == 0)) {
		$self->{_raise_error} = 0;
	}
	bless $self, $class;
	return $self;
}

=head2 string

$har->string() accepts a stringified version of an http archive and parses it.  It returns the previous state of the archive in stringified form

=cut

sub string {
	my ($self, $string) = @_;
	my $old = JSON->new()->utf8()->allow_blessed(1)->convert_blessed(1)->pretty()->encode({ 'log' => ($self->{'log'} || {}) });
	if ((@_ > 1) && (defined $string)) {
		my $ref = JSON->new()->utf8()->decode($string);
		$self->version($ref->{log}->{version});
		$self->creator($ref->{log}->{creator});
		$self->browser($ref->{log}->{browser});
		$self->pages($ref->{log}->{pages});
		$self->entries($ref->{log}->{entries});
		$self->comment($ref->{log}->{comment});
	}
	return $old;
}

=head2 error

$har->error() will return the most recent error message generated by $har

=cut

sub error {
	my ($self, $error) = @_;
	my $old = $self->{_error};
	if (@_ > 1) {
		$self->{_error} = $error;
		if ($self->{_raise_error}) {
			Carp::croak($error);
		}
	}
	return $old;
}

=head2 version

$har->version() will return the version of the HTTP Archive ('1.1' by default);

=cut

sub version {
	my ($self, $version) = @_;
	my $old = $self->{log}->{version} || '1.1';
	if (@_ > 1) {
		$self->{log}->{version} = $version;
	}
	return $old;
}

=head2 creator

$har->creator() will return the creator object for the HTTP Archive

=cut

sub creator {
	my ($self, $creator) = @_;
	my $old = $self->{log}->{creator};
	if (@_ > 1) {
		$self->{log}->{creator} = Archive::Har::Creator->new($creator);
	}
	return $old;
}

=head2 browser

$har->browser() will return the browser object for the HTTP Archive

=cut

sub browser {
	my ($self, $browser) = @_;
	my $old = $self->{log}->{browser};
	if (@_ > 1) {
		$self->{log}->{browser} = Archive::Har::Browser->new($browser);
	}
	return $old;
}

=head2 pages

$har->pages() will return the list of page objects for the HTTP Archive

=cut

sub pages {
	my ($self, $pages) = @_;
	my $old = $self->{log}->{pages} || [];
	if (@_ > 1) {
		$self->{log}->{pages} = [];
		foreach my $page (@$pages) {
			push @{$self->{log}->{pages}}, Archive::Har::Page->new($page);
		}
	}
	return @$old;
}

=head2 entries

$har->entries() will return the list of entry objects for the HTTP Archive

=cut

sub entries {
	my ($self, $entries) = @_;
	my $old = $self->{log}->{entries} || [];
	if (@_ > 1) {
		$self->{log}->{entries} = [];
		foreach my $entry (@$entries) {
			push @{$self->{log}->{entries}}, Archive::Har::Entry->new($entry);
		}
	}
	return @$old;
}

=head2 comment

$har->comment() will return the comment for the HTTP Archive

=cut

sub comment {
	my ($self, $comment) = @_;
	my $old = $self->{log}->{comment};
	if (@_ > 1) {
		$self->{log}->{comment} = $comment;
	}
	return $old;
}

sub TO_JSON {
	my ($self) = @_;
	my $json = {};
	$json->{creator} = $self->creator();
	$json->{browser} = $self->browser();
	$json->{pages} = [ $self->pages() ];
	$json->{entries} = [ $self->entries() ];
	$json->{comment} = $self->comment();
	return $json;
}

=head1 SEE ALSO

The HTTP Archive Spec <http://www.softwareishard.com/blog/har-12-spec/>

=head1 AUTHOR

David Dick, C<< <ddick at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-archive-har at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Archive-Har>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Archive::Har


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Archive-Har>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Archive-Har>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Archive-Har>

=item * Search CPAN

L<http://search.cpan.org/dist/Archive-Har/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 David Dick.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Archive::Har

package Archive::Har::Entry::Response;

use warnings;
use strict;
use Carp();
use Archive::Har::Entry::Header();
use Archive::Har::Entry::Cookie();
use Archive::Har::Entry::Response::Content();

=head1 NAME

Archive::Har::Entry::Response - Represents a single http response inside the HTTP Archive

=head1 VERSION

Version 0.03

=cut

our $VERSION = '0.03';

=head1 SYNOPSIS

    use Archive::Har();

    my $http_archive_string = '"log": { "version": "1.1", .... ';
    my $har = Archive::Har->new();
    $har->string($http_archive_string);
    foreach my $entry ($har->entries()) {
        my $response = $entry->response();
	print "Status: " . $response->status() . "\n";
	print "StatusText: " . $response->statusText() . "\n";
	print "HttpVersion: " . $response->httpVersion() . "\n";
	foreach my $header ($response->headers()) {
	}
	foreach my $cookie ($response->cookies()) {
	}
	my $content = $response->content();
	print "RedirectURL: " . $response->redirectURL() . "\n";
	print "Header Size: " . $response->headersSize() . "\n";
	print "Body Size: " . $response->bodySize() . "\n";
	print "Comment: " . $response->comment() . "\n";
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			status => undef,
			statusText => undef,
			httpVersion => undef,
			headers => undef,
			cookies => undef,
			content => undef,
			redirectURL => undef,
			headersSize => undef,
			bodySize => undef,
			comment => undef,
		);

=head2 status

returns the numeric status of the response

=head2 statusText

returns the status text of the response

=head2 httpVersion

returns the version of the http response

=head2 headers

returns a list of http header objects

=cut

sub headers {
	my ($self, $headers) = @_;
	my $old = $self->{headers} || [];
	if (@_ > 1) {
		$self->{headers} = [];
		foreach my $header (@$headers) {
			push @{$self->{headers}}, Archive::Har::Entry::Header->new($header);
		}
	}
	return @$old;
}

=head2 cookies

returns a list of http cookie objects

=cut

sub cookies {
	my ($self, $cookies) = @_;
	my $old = $self->{cookies} || [];
	if (@_ > 1) {
		$self->{cookies} = [];
		foreach my $cookie (@$cookies) {
			push @{$self->{cookies}}, Archive::Har::Entry::Cookie->new($cookie);
		}
	}
	return @$old;
}

=head2 content

returns details about the response body

=cut

sub content {
	my ($self, $content) = @_;
	my $old = $self->{content} || {};
	if (@_ > 1) {
		$self->{content} = Archive::Har::Entry::Response::Content->new($content);
	}
	return $old;
}

=head2 redirectURL

returns the content of the Location header of the response, if any

=head2 headersSize

returns the total number of bytes in the http response up to and including the double CRLF before the start of the response body

=cut

sub headersSize {
	my ($self, $headersSize) = @_;
	my $old = $self->{headersSize};
	if ((defined $old) && ($old eq '-1')) {
		$old = undef;
	}
	if (@_ > 1) {
		if (defined $headersSize) {
			$self->{headersSize} = $headersSize;
		} else {
			$self->{headersSize} = '-1';
		}
	}
	return $old;
}

=head2 bodySize

returns the total number of bytes in the http response body

=cut

sub bodySize {
	my ($self, $bodySize) = @_;
	my $old = $self->{bodySize};
	if ((defined $old) && ($old eq '-1')) {
		$old = undef;
	}
	if (@_ > 1) {
		if (defined $bodySize) {
			$self->{bodySize} = $bodySize;
		} else {
			$self->{bodySize} = '-1';
		}
	}
	return $old;
}

=head2 comment

returns the comment about the Entry

=cut

sub new {
	my ($class, $params) = @_;
	my $self = {};
	bless $self, $class;
	foreach my $key (sort { $a cmp $b } keys %_fields) {
		next unless (defined $params->{$key});
		$self->$key($params->{$key});
	}
	foreach my $key (sort { $a cmp $b } keys %$params) {
		if ($key =~ /^_/) { # check for private fields
			$self->$key($params->{$key});
		}
	}
	return $self;
}

sub AUTOLOAD {
	my $self = shift;
	my $type = ref($self) or Carp::croak "$self is not an object";

	my $name = $Archive::Har::Entry::Response::AUTOLOAD;
	$name =~ s/.*://;   # strip fully-qualified portion

	if ($name =~ /^[a-zA-Z]+$/) {
		if (not exists $_fields{$name} ) {
		    Carp::croak "Can't access '$name' field in class $type";
		}
		if (@_) {
		    return $self->{$name} = shift;
		} else {
		    return $self->{$name};
		}
	} elsif ($name =~ /^_[a-zA-Z]+$/) { # private fields
		if (@_) {
		    return $self->{$name} = shift;
		} else {
	            return $self->{$name};
		}
	}
	return;
}

sub TO_JSON {
	my ($self) = @_;
	my $json = {};
	foreach my $key (sort { $a cmp $b } keys %$self) {
		next unless (defined $self->{$key});
		$json->{$key} = $self->{$key};
	}
	return $json;
}

sub DESTROY {
}

1;

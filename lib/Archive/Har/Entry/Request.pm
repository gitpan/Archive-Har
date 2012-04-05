package Archive::Har::Entry::Request;

use warnings;
use strict;
use Carp();
use Archive::Har::Entry::Header();
use Archive::Har::Entry::Cookie();
use Archive::Har::Entry::Request::QueryString();
use Archive::Har::Entry::Request::PostData();

=head1 NAME

Archive::Har::Entry::Request - Represents a single http request inside the HTTP Archive

=head1 VERSION

Version 0.02

=cut

our $VERSION = '0.02';

=head1 SYNOPSIS

    use Archive::Har();

    my $http_archive_string = '"log": { "version": "1.1", .... ';
    my $har = Archive::Har->new();
    $har->string($http_archive_string);
    foreach my $entry ($har->entries()) {
        my $request = $entry->request();
	print "Method: " . $request->method() . "\n";
	print "Url: " . $request->url() . "\n";
	print "HttpVersion: " . $request->httpVersion() . "\n";
	foreach my $header ($request->headers()) {
	}
	foreach my $cookie ($request->cookies()) {
	}
	foreach my $item ($request->queryString()) {
	}
	my $postData = $request->postData();
	print "Header Size: " . $request->headersSize() . "\n";
	print "Body Size: " . $request->bodySize() . "\n";
	print "Comment: " . $request->comment() . "\n";
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			method => undef,
			url => undef,
			httpVersion => undef,
			headers => undef,
			cookies => undef,
			queryString => undef,
			postData => undef,
			headersSize => undef,
			bodySize => undef,
			comment => undef,
		);

=head2 method

returns the request method

=head2 url

returns the absolute url of the request (excluding fragments)

=head2 httpVersion

returns the version of the http request

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

=head2 queryString

returns a list of the individual objects in the query string

=cut

sub queryString {
	my ($self, $queryString) = @_;
	my $old = $self->{queryString} || [];
	if (@_ > 1) {
		$self->{queryString} = [];
		foreach my $queryString (@$queryString) {
			push @{$self->{queryString}}, Archive::Har::Entry::Request::QueryString->new($queryString);
		}
	}
	return @$old;
}

=head2 postData

returns the post data object.  This may return undef if the postData is not defined.

=cut

sub postData {
	my ($self, $postData) = @_;
	my $old = $self->{postData} || undef;
	if (@_ > 1) {
		if (defined $postData) {
			$self->{postData} = Archive::Har::Entry::Request::PostData->new($postData);
		} else {
			delete $self->{postData};
		}
	}
	return $old;
}

=head2 headersSize

returns the total number of bytes in the http request up to and including the double CRLF before the start of the request body

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

returns the total number of bytes in the http request body

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

	my $name = $Archive::Har::Entry::Request::AUTOLOAD;
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
		next if (
			($key eq 'headers') ||
			($key eq 'cookies') ||
			($key eq 'queryString') ||
			($key eq 'postData')
		);
		$json->{$key} = $self->{$key};
	}
	$json->{headers} = [ $self->headers() ];
	$json->{cookies} = [ $self->cookies() ];
	$json->{queryString} = [ $self->queryString() ];
	if (defined $self->postData()) {
		$json->{postData} = $self->postData();
	}
	return $json;
}

sub DESTROY {
}

1;

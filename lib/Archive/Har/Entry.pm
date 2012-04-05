package Archive::Har::Entry;

use warnings;
use strict;
use Carp();
use Archive::Har::Entry::Request();
use Archive::Har::Entry::Response();
use Archive::Har::Entry::Cache();
use Archive::Har::Entry::Timings();

=head1 NAME

Archive::Har::Entry - Represents a single http request/response pair inside the HTTP Archive

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
        print "PageRef: " . $entry->pageref() . "\n";
        print "DateTime: " . $entry->startedDateTime() . "\n";
        print "Total Elasped Time: " . $entry->time() . "\n";
        my $request = $entry->request();
        my $response = $entry->response();
        my $cache = $entry->cache();
        my $timing = $entry->pageTimings();
        print "Server IP Address: " . $entry->serviceIPAddress() . "\n";
        print "Connection: " . $entry->connection() . "\n";
        print "Comment: " . $entry->comment() . "\n";
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			pageref => undef,
			startedDateTime => undef,
			time => undef,
			request => undef,
			response => undef,
			cache => undef,
			timings => undef,
			serverIPAddress => undef,
			connection => undef,
			comment => undef,
		);

=head2 pageref

returns the reference to the parent page.  This may be null.

=head2 startedDateTime

returns the date and time stamp for the beginning of the request (ISO 8601 format)

=head2 time

returns the total elapsed time of the request in milliseconds.  It is the sum of all the timings available in the timings object (not including -1 values).

=cut

sub time {
	my ($self) = @_;
        my $timings = $self->timings();
	if (defined $timings) {
		my $total = 0;
		my $found = 0;
		foreach my $timing (
						$timings->blocked(),
						$timings->dns(),
						$timings->connect(),
						$timings->send(),
						$timings->wait(),
						$timings->receive(),
						$timings->ssl(),
					)
		{
			if (defined $timing) {
				$found = 1;
				$total += $timing;
			}
		}
		if ($found) {
			return $total;
		} else {
			return -1;
		}
	} else {
		return -1;
	}
}

=head2 request

returns the request object

=head2 response

returns the response object

=head2 cache

returns the cache object

=head2 timings

returns the entry timings object

=head2 serverIPAddress

returns the IP address of the server that was connected (result of DNS resolution)

=head2 connection

returns the unique ID of the parent TCP/IP connection.  This can be the client port number.

=head2 comment

returns the comment about the Entry

=cut

sub new {
	my ($class, $params) = @_;
	my $self = {};
	bless $self, $class;
	foreach my $key (sort { $a cmp $b } keys %_fields) {
		next unless (defined $params->{$key});
		if ($key eq 'request') {
			$self->{$key} = Archive::Har::Entry::Request->new($params->{$key});
		} elsif ($key eq 'response') {
			$self->{$key} = Archive::Har::Entry::Response->new($params->{$key});
		} elsif ($key eq 'cache') {
			$self->{$key} = Archive::Har::Entry::Cache->new($params->{$key});
		} elsif ($key eq 'timings') {
			$self->{$key} = Archive::Har::Entry::Timings->new($params->{$key});
		} else {
			$self->$key($params->{$key});
		}
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

	my $name = $Archive::Har::Entry::AUTOLOAD;
	$name =~ s/.*://;   # strip fully-qualified portion

	if ($name =~ /^[a-zA-Z]+$/) {
		if (not exists $_fields{$name} ) {
		    Carp::croak "Can't access `$name' field in class $type";
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
	if (defined $self->time()) {
		$json->{time} = $self->time();
	}
	return $json;
}

sub DESTROY {
}

1;

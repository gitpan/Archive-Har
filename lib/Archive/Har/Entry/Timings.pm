package Archive::Har::Entry::Timings;

use warnings;
use strict;
use Carp();
use Archive::Har::Entry::Cache::Request();

=head1 NAME

Archive::Har::Entry::Timings - Represents the timings for the individual phases during a request/response pair inside the HTTP Archive

=head1 VERSION

Version 0.04

=cut

our $VERSION = '0.04';

=head1 SYNOPSIS

    use Archive::Har();

    my $http_archive_string = '"log": { "version": "1.1", .... ';
    my $har = Archive::Har->new();
    $har->string($http_archive_string);
    foreach my $entry ($har->entries()) {
        my $timings = $entry->timings();
	print "Blocked: " . $timings->blocked() . "\n";
	print "DNS: " . $timings->dns() . "\n";
	print "Connect: " . $timings->connect() . "\n";
	print "Send: " . $timings->send() . "\n";
	print "Wait: " . $timings->wait() . "\n";
	print "Receive: " . $timings->receive() . "\n";
	print "Ssl: " . $timings->ssl() . "\n";
	print "Comment: " . $timings->comment() . "\n";
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			blocked => undef,
			dns => undef,
			connect => undef,
			send => undef,
			wait => undef,
			receive => undef,
			ssl => undef,
			comment => undef,
		);

=head2 blocked

returns the time in milliseconds spent waiting for a network connection.  Ihe function will return undef if it does not apply to the current request

=cut

sub blocked {
	my ($self, $blocked) = @_;
	my $old = $self->{blocked};
	if ((defined $old) && ($old eq '-1')) {
		$old = undef;
	}
	if (@_ > 1) {
		if (defined $blocked) {
			$self->{blocked} = $blocked;
		} else {
			$self->{blocked} = '-1';
		}
	}
	return $old;
}

=head2 dns

returns the time in milliseconds spent in DNS resolution of the host name.  Ihe function will return undef if it does not apply to the current request

=cut

sub dns {
	my ($self, $dns) = @_;
	my $old = $self->{dns};
	if ((defined $old) && ($old eq '-1')) {
		$old = undef;
	}
	if (@_ > 1) {
		if (defined $dns) {
			$self->{dns} = $dns;
		} else {
			$self->{dns} = '-1';
		}
	}
	return $old;
}

=head2 connect

returns the time in milliseconds spent making the TCP connection.  Ihe function will return undef if it does not apply to the current request

=cut

sub connect {
	my ($self, $connect) = @_;
	my $old = $self->{connect};
	if ((defined $old) && ($old eq '-1')) {
		$old = undef;
	}
	if (@_ > 1) {
		if (defined $connect) {
			$self->{connect} = $connect;
		} else {
			$self->{connect} = '-1';
		}
	}
	return $old;
}

=head2 send

returns the time in milliseconds spent sending the request to the server.

=head2 wait

returns the time in milliseconds spent waiting for a response from the server.

=head2 receive

returns the time in milliseconds spent reading the response from the server.

=head2 ssl

returns the time in milliseconds spent negotiating the SSL/TLS session.  Ihe function will return undef if it does not apply to the current request

=cut

sub ssl {
	my ($self, $ssl) = @_;
	my $old = $self->{ssl};
	if ((defined $old) && ($old eq '-1')) {
		$old = undef;
	}
	if (@_ > 1) {
		if (defined $ssl) {
			$self->{ssl} = $ssl;
		} else {
			$self->{ssl} = '-1';
		}
	}
	return $old;
}

=head2 comment

returns the comment about the page timings

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

	my $name = $Archive::Har::Entry::Timings::AUTOLOAD;
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

package Archive::Har::Entry::Cache::Request;

use warnings;
use strict;
use Carp();

=head1 NAME

Archive::Har::Entry::Cache::Request - Represents a cache request for a cache inside the HTTP Archive

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
        my $cache = $entry->cache();
	my $beforeRequest = $cache->beforeRequest();
	print "Expires: " . $beforeRequest->expires() . "\n";
	print "Last Access: " . $beforeRequest->lastAccess() . "\n";
	print "etag: " . $beforeRequest->etag() . "\n";
	print "hitCount: " . $beforeRequest->hitCount() . "\n";
	print "Comment: " . $beforeRequest->comment() . "\n";
	my $afterRequest = $cache->afterRequest();
	print "Expires: " . $afterRequest->expires() . "\n";
	print "Last Access: " . $afterRequest->lastAccess() . "\n";
	print "etag: " . $afterRequest->etag() . "\n";
	print "hitCount: " . $afterRequest->hitCount() . "\n";
	print "Comment: " . $afterRequest->comment() . "\n";
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			expires => undef,
			lastAccess => undef,
			eTag => undef,
			hitCount => undef,
			comment => undef,
		);

=head2 expires

returns the expiration time of the cache entry

=head2 lastAccess

returns the last time the cache was accessed

=head2 etag

returns the etag of the cache

=head2 comment

returns the comment about element in the Query String

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

	my $name = $Archive::Har::Entry::Cache::Request::AUTOLOAD;
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

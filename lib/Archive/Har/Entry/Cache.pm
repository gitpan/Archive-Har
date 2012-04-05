package Archive::Har::Entry::Cache;

use warnings;
use strict;
use Carp();
use Archive::Har::Entry::Cache::Request();

=head1 NAME

Archive::Har::Entry::Cache - Represents the cache for a single request/response pair inside the HTTP Archive

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
	my $before = $cache->beforeRequest();
	my $after = $cache->afterRequest();
	print "Comment: " . $cache->comment() . "\n";
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			beforeRequest => undef,
			afterRequest => undef,
			comment => undef,
		);

=head2 beforeRequest

returns the state of the cache before the request

=cut

sub beforeRequest {
	my ($self, $beforeRequest) = @_;
	my $old = $self->{beforeRequest} || undef;
	if (@_ > 1) {
		$self->{beforeRequest} = Archive::Har::Entry::Cache::Request->new($beforeRequest);
	}
	return $old;
}

=head2 afterRequest

returns the state of the cache after the request

=cut

sub afterRequest {
	my ($self, $afterRequest) = @_;
	my $old = $self->{afterRequest} || undef;
	if (@_ > 1) {
		$self->{afterRequest} = Archive::Har::Entry::Cache::Request->new($afterRequest);
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

	my $name = $Archive::Har::Entry::Cache::AUTOLOAD;
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
	unless (exists $json->{beforeRequest}) {
		$json->{beforeRequest} = undef;
	}
	unless (exists $json->{afterRequest}) {
		$json->{beforeRequest} = undef;
	}
	return $json;
}

sub DESTROY {
}

1;

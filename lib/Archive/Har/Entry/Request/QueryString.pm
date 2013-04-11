package Archive::Har::Entry::Request::QueryString;

use warnings;
use strict;
use Carp();

=head1 NAME

Archive::Har::Entry::Request::QueryString - Represents a single name/value pair from the query string for a request inside the HTTP Archive

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
        my $request = $entry->request();
	foreach my $element ($request->queryString()) {
		print "Name: " . $element->name() . "\n";
		print "Value: " . $element->value() . "\n";
		print "Comment: " . $element->comment() . "\n";
	}
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			name => undef,
			value => undef,
			comment => undef,
		);

=head2 name

returns the name of the element in the Query String

=head2 value

returns the value of the element in the Query String

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

	my $name = $Archive::Har::Entry::Request::QueryString::AUTOLOAD;
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

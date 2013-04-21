package Archive::Har::Entry::Cookie;

use warnings;
use strict;
use Carp();
use Archive::Har::Entry::Cookie();

=head1 NAME

Archive::Har::Entry::Cookie - Represents a single http cookie object for a request or response inside the HTTP Archive

=head1 VERSION

Version 0.05

=cut

our $VERSION = '0.05';

=head1 SYNOPSIS

    use Archive::Har();

    my $http_archive_string = '"log": { "version": "1.1", .... ';
    my $har = Archive::Har->new();
    $har->string($http_archive_string);
    foreach my $entry ($har->entries()) {
        my $request = $entry->request();
	foreach my $cookie ($request->cookies()) {
		print "Name: " . $header->name() . "\n";
		print "Value: " . $header->value() . "\n";
		print "Path: " . $header->path() . "\n";
		print "Domain: " . $header->domain() . "\n";
		print "Expires: " . $header->expires() . "\n";
		print "httpOnly: " . $header->httpOnly() . "\n";
		print "secure: " . $header->secure() . "\n";
		print "Comment: " . $header->comment() . "\n";
	}
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			name => undef,
			value => undef,
			path => undef,
			domain => undef,
			expires => undef,
			httpOnly => undef,
			secure => undef,
			comment => undef,
		);

=head2 name

returns the name of the cookie

=head2 value

returns the value of the cookie

=head2 path

returns the path of the cookie

=head2 domain

returns the domain of the cookie

=head2 expires

returns the expiry date (if any) of the cookie

=head2 httpOnly

returns a true/false value if the cookie is marked as httpOnly

=head2 secure

returns a true/false value if the cookie is marked as secure, to only be transmitted over https

=head2 comment

returns the comment about the header

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

	my $name = $Archive::Har::Entry::Cookie::AUTOLOAD;
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

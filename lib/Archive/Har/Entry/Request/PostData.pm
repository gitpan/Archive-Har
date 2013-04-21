package Archive::Har::Entry::Request::PostData;

use warnings;
use strict;
use Carp();
use Archive::Har::Entry::Request::PostData::Params();

=head1 NAME

Archive::Har::Entry::Request::PostData - Represents a single name/value pair from the query string for a request inside the HTTP Archive

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
	my $postData = $request->postData();
	if (defined $postData) {
            print "MimeType: " . $postData->mimeType() . "\n";
            print "Text: " . $postData->text() . "\n";
            foreach my $element ($postData->params()) {
            }
            print "Comment: " . $postData->comment() . "\n";
        }
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			mimeType => undef,
			text => undef,
			params => undef,
			comment => undef,
		);

=head2 mimeType

returns the mime type of the posted data

=head2 text

returns the plain text posted data.  It will return undef if params has been defined

=cut

sub text {
	my ($self, $text) = @_;
	my $old = $self->{text};
	if (scalar $self->params() != 0) {
		$old = undef;
	}
	if (@_ > 1) {
		if (not(defined $text)) {
			$text = '';
		}
		$self->{text} = $text;
	}
	return $old;
}

=head2 params

returns a list of posted parameters

=cut

sub params {
	my ($self, $params) = @_;
	my $old = $self->{params} || [];
	if (@_ > 1) {
		$self->{params} = [];
		foreach my $param (@$params) {
			push @{$self->{params}}, Archive::Har::Entry::Request::PostData::Params->new($param);
		}
	}
	return @$old;
}

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

	my $name = $Archive::Har::Entry::Request::PostData::AUTOLOAD;
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

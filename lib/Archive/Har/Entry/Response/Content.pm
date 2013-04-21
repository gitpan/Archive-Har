package Archive::Har::Entry::Response::Content;

use warnings;
use strict;
use Carp();

=head1 NAME

Archive::Har::Entry::Response::Content - Represents the content for a response inside the HTTP Archive

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
        my $response = $entry->response();
	my $content = $response->content();
	print "Size: " . $content->size() . "\n";
	print "Compression: " . $content->compression() . "\n";
	print "MimeType: " . $content->mimeType() . "\n";
	print "Text: " . $content->text() . "\n";
	print "Encoding: " . $content->encoding() . "\n";
	print "Comment: " . $content->comment() . "\n";
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			size => undef,
			compression => undef,
			mimeType => undef,
			text => undef,
			encoding => undef,
			comment => undef,
		);

=head2 size

returns the length of the returned content in bytes

=head2 compression

returns the number of bytes saved due to compression

=head2 mimeType

returns the mime type of the response text.  The charset attribute is included if available

=head2 text

returns the plain text response.  If this field is not HTTP decoded, then the encoding field may be used

=head2 encoding

returns the encoding (such as base64) of the text field

=head2 comment

returns the comment about the response

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

	my $name = $Archive::Har::Entry::Response::Content::AUTOLOAD;
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

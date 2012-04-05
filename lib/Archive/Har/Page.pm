package Archive::Har::Page;

use warnings;
use strict;
use Carp();
use Archive::Har::Page::PageTimings();

=head1 NAME

Archive::Har::Page - Represents a single page inside the HTTP Archive

=head1 VERSION

Version 0.03

=cut

our $VERSION = '0.03';

=head1 SYNOPSIS

    use Archive::Har();

    my $http_archive_string = '"log": { "version": "1.1", .... ';
    my $har = Archive::Har->new();
    $har->string($http_archive_string);
    foreach my $page ($har->pages()) {
        print "DateTime: " . $page->startedDateTime() . "\n";
        print "Id: " . $page->id() . "\n";
        print "Title: ". $page->title() . "\n";
        my $timing = $page->pageTimings();
        print "Comment: " . $page->comment() . "\n";
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			startedDateTime => undef,
			id => undef,
			title => undef,
			pageTimings => undef,
			comment => undef,
		);

=head2 startedDateTime

returns the date and time stamp for the beginning of the page load (ISO 8601 format)

=head2 id

returns the unique identifier of a page within the Archive. This is referenced by the Archive::Har::Entry objects

=head2 title

returns the page title

=head2 pageTimings

returns the page timings object

=head2 comment

returns the comment about the Page

=cut

sub new {
	my ($class, $params) = @_;
	my $self = {};
	bless $self, $class;
	foreach my $key (sort { $a cmp $b } keys %_fields) {
		next unless (defined $params->{$key});
		if ($key eq 'pageTimings') {
			$self->$key(Archive::Har::Page::PageTimings->new($params->{$key}));
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

	my $name = $Archive::Har::Page::AUTOLOAD;
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

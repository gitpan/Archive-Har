package Archive::Har::Page::PageTimings;

use warnings;
use strict;
use Carp();

=head1 NAME

Archive::Har::Page::PageTimings - Represents detailed timing of page within the HTTP Archive

=head1 VERSION

Version 0.02

=cut

our $VERSION = '0.02';

=head1 SYNOPSIS

    use Archive::Har();

    my $http_archive_string = '"log": { "version": "1.1", .... ';
    my $har = Archive::Har->new();
    $har->string($http_archive_string);
    foreach my $page ($har->pages()) {
        my $timings = $page->pageTimings();
	print "onContentLoad for " . $page->title() . ": " . $timings->onContentLoad() . "\n";
	print "onLoad for " . $page->title() . ": " . $timings->onLoad() . "\n";
        print "Comment for " . $page->title() . ": " . $timings->comment() . "\n";
    }

=head1 SUBROUTINES/METHODS

=cut

my (%_fields) = (
			onContentLoad => undef,
			onLoad => undef,
			comment => undef,
		);

=head2 onContentLoad

returns the number of milliseconds since $har->page()->startedDateTime() that the content of the page loaded or undef if the timing does not apply

=cut

sub onContentLoad {
	my ($self, $onContentLoad) = @_;
	my $old = $self->{onContentLoad};
	if ((defined $old) && ($old eq '-1')) {
		$old = undef;
	}
	if (@_ > 1) {
		if (defined $onContentLoad) {
			$self->{onContentLoad} = $onContentLoad;
		} else {
			$self->{onContentLoad} = '-1';
		}
	}
	return $old;
}

=head2 onLoad

returns the number of milliseconds since $har->page()->startedDateTime() that the page loaded or undef if the timing does not apply

=cut

sub onLoad {
	my ($self, $onLoad) = @_;
	my $old = $self->{onLoad};
	if ((defined $old) && ($old eq '-1')) {
		$old = undef;
	}
	if (@_ > 1) {
		if (defined $onLoad) {
			$self->{onLoad} = $onLoad;
		} else {
			$self->{onLoad} = '-1';
		}
	}
	return $old;
}

=head2 comment

returns the comment about the page timing

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

	my $name = $Archive::Har::Page::PageTimings::AUTOLOAD;
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

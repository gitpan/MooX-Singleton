
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "turn your Moo class into singleton",
  "AUTHOR" => "Alex J. G. Burzy\305\204ski <ajgb\@cpan.org>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Moo" => 0,
    "My::Singleton::A" => 0,
    "My::Singleton::B" => 0,
    "My::Singleton::C" => 0,
    "My::Singleton::D" => 0,
    "My::Singleton::E" => 0,
    "Test::More" => 0,
    "warnings" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "MooX-Singleton",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "MooX::Singleton",
  "PREREQ_PM" => {
    "Role::Tiny" => 0,
    "strict" => 0,
    "strictures" => 1
  },
  "VERSION" => "1.121160",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);




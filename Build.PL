
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
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
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "turn your Moo class into singleton",
  "dist_author" => [
    "Alex J. G. Burzy\305\204ski <ajgb\@cpan.org>"
  ],
  "dist_name" => "MooX-Singleton",
  "dist_version" => "1.121160",
  "license" => "perl",
  "module_name" => "MooX::Singleton",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Role::Tiny" => 0,
    "strict" => 0,
    "strictures" => 1
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;

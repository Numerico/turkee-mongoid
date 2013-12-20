# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = %q{turkee-mongoid}
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Jim Jones}, %q{Numerico}]
  s.date = %q{2013-05-14}
  s.description = %q{Mongoid port of Turkee. The same as Turkee, it creates usability studies, posts HITs, and retrieves the user entered values from Mechanical Turk.}
  s.email = %q{webmaster@numerica.cl}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.homepage = %q{http://github.com/Numerico/turkee}
  s.post_install_message = %q{
  ========================================================================
  Turkee Mongoid Installation Complete.
  ------------------------------------------------------------------------

  BEWARE! THIS GEM ISN'T ACTIVELY MAINTAINED

  If you got it from RubyGems, it might have gotten outdated.
  To be sure, you can fork it on GitHub:
    https://github.com/Numerico/turkee
  add Turkee as a remote:
    git remote add turkee git@github.com:aantix/turkee.git
  and then pull it
    git pull turkee master
  any new features (needing conversion) would then appear

  ========================================================================
  -- Gobble gobble too.
  }
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.1}
  s.summary = %q{This is a port of Turkee gem to use Mongoid instead of Active Record.}

  s.add_dependency(%q<lockfile>)
  s.add_dependency(%q<rails>, [">= 4.0.0"])
  s.add_dependency(%q<rturk>, [">= 2.4.1"])
  s.add_dependency 'mongoid', '>= 4.0.0.alpha1'

  s.add_development_dependency "mocha"
  s.add_development_dependency "spork"

  # RSpec has to be in both test and development so that rake tasks and generators
  # are available without having to explicitly switch the environment to 'test'
  s.add_development_dependency 'factory_girl', '>= 4.3.0'
  s.add_development_dependency "rspec-rails", "~> 2.14.0"

end


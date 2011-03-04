# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stashboard/version"

Gem::Specification.new do |s|
  s.name        = "stashboard"
  s.version     = Stashboard::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sam Mulube"]
  s.email       = ["sam@connectedenvironments.com"]
  s.homepage    = "http://github.com/smulube/stashboard"
  s.summary     = %q{Library for interacting with the Stashboard api.}
  s.description = %q{Little library written to make interacting with the stashboard api a bit easier}

  s.rubyforge_project = "stashboard"
  s.rubygems_version = ">= 1.3.6"

  s.add_dependency('yajl-ruby', '>= 0.8.1')
  s.add_dependency('oauth', '>= 0.4.4')

  s.add_development_dependency('yard', '>= 0.6.4')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

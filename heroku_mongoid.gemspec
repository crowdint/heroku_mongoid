# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "heroku_mongoid/version"

Gem::Specification.new do |s|
  s.name        = "heroku_mongoid"
  s.version     = HerokuMongoid::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Padilla"]
  s.email       = ["david@crowdint.com"]
  s.homepage    = ""
  s.summary     = %q{Easy Mongoid settings on Heroku}
  s.description = %q{Easy Mongoid settings on Heroku}

  s.rubyforge_project = "heroku_mongoid"

  s.add_development_dependency('minitest', '~>2.1.0')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

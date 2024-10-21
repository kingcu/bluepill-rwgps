# -*- encoding: utf-8 -*-

$LOAD_PATH.push File.expand_path("../lib", __FILE__)

require "bluepill/version"

Gem::Specification.new do |s|
  s.name        = "bluepill-rwgps"
  s.version     = Bluepill::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Cullen King", "Arya Asemanfar", "Gary Tsang", "Rohith Ravi"]
  s.email       = ["cullenk@gmail.com"]
  s.homepage    = "http://github.com/kingcu/bluepill-rwgps"
  s.summary     = %q{Fork of bluepill process monitory, reverting back to stable code with no global PID journal.}
  s.description = %q{The original bluepill process monitor worked well.  In 2013 several changes were introduced that were detrimental to the stability of bluepill, as well as the system running it.  This fork reverts back to the stable/non-destructive code.}

  s.add_dependency 'daemons', ['~> 1.1.4']
  s.add_dependency 'state_machine', '~> 1.1.0'
  s.add_dependency 'activesupport', '~> 4.2.8'
  s.add_dependency 'i18n', '>= 0.5.0'

  s.add_development_dependency 'bundler', '>= 1.0.10'
  s.add_development_dependency 'rake', '!= 0.9.0'
  s.add_development_dependency 'rspec-core', '~> 2.0'
  s.add_development_dependency 'rspec-expectations', '~> 2.0'
  s.add_development_dependency 'rr', '~> 1.0'
  s.add_development_dependency 'faker', '~> 0.9'
  s.add_development_dependency 'yard', '~> 0.7'

  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths    = ["lib"]
  s.extra_rdoc_files = ["LICENSE", "README.md"]
end


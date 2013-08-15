# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jjemoji/version'

Gem::Specification.new do |spec|
  spec.name          = "jjemoji"
  spec.version       = Jjemoji::VERSION
  spec.authors       = ["David Wang"]
  spec.email         = ["DevilDavidWang@gmail.com"]
  spec.description   = %q{This gem is used as a reference book for emoji}
  spec.summary       = %q{A emoji reference command}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

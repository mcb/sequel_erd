# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sequel_erd/version'

Gem::Specification.new do |spec|
  spec.name          = "sequel_erd"
  spec.version       = Sequel::Erd::VERSION
  spec.authors       = ["Michael C. Beck"]
  spec.email         = ["michael.beck@qualeapps.com"]
  spec.summary       = %q{Sequel ERD}
  spec.description   = %q{Creates ERD (Entity-Relationship-Models) from Sequel Models}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'ruby-graphviz', '~> 1.2.2'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

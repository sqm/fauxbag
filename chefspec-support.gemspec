# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chefspec-support/version'

Gem::Specification.new do |spec|
  spec.name          = "chefspec-support"
  spec.version       = ChefSpecSupport::VERSION
  spec.authors       = ["Squaremouth"]
  spec.email         = ["developers@squaremouth.com"]
  spec.summary       = %q{Support library for ChefSpec.}
  spec.description   = %q{Support library for ChefSpec.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9'

  spec.add_dependency 'chefspec'
  spec.add_dependency 'multi_json'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

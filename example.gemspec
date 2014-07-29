# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'example/version'

Gem::Specification.new do |spec|
  spec.name          = "example"
  spec.version       = Example::VERSION
  spec.authors       = ["nkj20932"]
  spec.email         = ["nkj20932@hotmail.com"]
  spec.summary       = %q{this is an example gem}
  spec.description   = %q{this is the description for my example gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end

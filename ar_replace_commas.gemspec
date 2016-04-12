# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ar_replace_commas/version'

Gem::Specification.new do |spec|
  spec.name          = "ar_replace_commas"
  spec.version       = ArReplaceCommas::VERSION
  spec.authors       = ["Jan Nikolai Trzeszkowski"]
  spec.email         = ["jn@trzeszkowski.de"]
  spec.summary       = %q{ActiveRecord extension for handling numeric column input with commas}
  spec.description   = %q{An ActiveRecord extension for properly parsing strings with commas as input to numeric columns.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end

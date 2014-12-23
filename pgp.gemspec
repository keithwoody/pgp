# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pgp/version'

Gem::Specification.new do |spec|
  spec.name          = "pgp"
  spec.version       = Pgp::VERSION
  spec.authors       = ["Duke Jones"]
  spec.email         = ["notme@gmail.com"]
  spec.summary       = %q{Repackages an old rails plugin as a gem}
  spec.description   = %q{See original repo https://github.com/dukejones/pgp}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_dependency 'railties', "~> 4.1"
end

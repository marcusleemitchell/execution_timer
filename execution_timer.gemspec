# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'execution_timer/version'

Gem::Specification.new do |spec|
  spec.name          = "execution_timer"
  spec.version       = ExecutionTimer::VERSION
  spec.authors       = ["Marcus Mitchell"]
  spec.email         = ["marcusleemitchell@gmail.com"]
  spec.summary       = %q{Measure the execution time of a block of code and
    return the milliseconds taken.}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-expectations", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.8"
  spec.add_development_dependency "pry", "~> 0.9"
  spec.add_development_dependency "pry-nav", "~> 0.2"
end

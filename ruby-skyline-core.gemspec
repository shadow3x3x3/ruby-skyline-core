# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-skyline-core"
  spec.version       = RubySkylineCore::VERSION
  spec.authors       = ["shadow3x3x3"]
  spec.email         = ["shadow3x3x3@gmail.com"]

  spec.summary       = %q{Skyline Query Core}
  spec.description   = %q{Comparing two datas that are multiple attributes. With Skyline Query definition.}
  spec.homepage      = "http://github.com/shadow3x3x3/ruby-skyline-core"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) } + Dir['lib/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

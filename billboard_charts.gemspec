# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'billboard_charts/version'

Gem::Specification.new do |spec|
  spec.name          = "billboard_charts"
  spec.version       = BillboardCharts::VERSION
  spec.authors       = ["ie4"]
  spec.email         = ["kei@ie4.me"]
  spec.summary       = %q{get billboard chart}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/ie4"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end

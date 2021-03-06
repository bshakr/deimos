
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "deimos/version"

Gem::Specification.new do |spec|
  spec.name          = "deimos"
  spec.version       = Deimos::VERSION
  spec.authors       = ["Adam Carlile"]
  spec.email         = ["hello@adamcarlile.com"]

  spec.summary       = "An oppinionated status gem to run alongside Phobos applications"
  spec.homepage      = "https://github.com/adamcarlile/deimos"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra"
  spec.add_dependency "sinatra-contrib"
  spec.add_dependency "huyegger"
  spec.add_dependency "concurrent-ruby", "~> 1.1.0"
  spec.add_dependency "prometheus-client"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end

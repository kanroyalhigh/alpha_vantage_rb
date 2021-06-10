# frozen_string_literal: true

require_relative "lib/alpha_vantage_rb/version"

Gem::Specification.new do |spec|
  spec.name          = "alpha_vantage_rb"
  spec.version	      = AlphaVantageRb::VERSION
  spec.authors       = ["Stefano Martin"]
  spec.email         = ["stefano.martin87@gmail.com"]
  spec.homepage      = "https://github.com/StefanoMartin/AlphaVantageRB"
  spec.license       = "MIT"
  spec.summary       = "A gem for Alpha Vantage"
  spec.description   = "A ruby wrapper for Alpha Vantage's HTTP API"
  spec.platform	    = Gem::Platform::RUBY
  spec.require_paths = ["lib"]
  spec.files         = ["lib/*", "spec/**/*", "alpha_vantage_rb.gemspec", "Gemfile", "LICENSE.md", "README.md"].map {|f| `git ls-files #{f}`.split("\n") }.to_a.flatten
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "httparty", ">= 0.15.6"
  spec.add_runtime_dependency "humanize", ">= 1.7.0"
  spec.add_development_dependency "pry-byebug", '~> 3.9.0'
  spec.add_development_dependency "rspec", "~>3.5", ">=3.5"
  spec.add_development_dependency "awesome_print", "~>1.7", ">= 1.7"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rubocop", "~> 1.7"
end

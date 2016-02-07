# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'materialize-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "materialize-rails"
  spec.version       = MaterializeRails::VERSION
  spec.authors       = ["Huy Dinh"]
  spec.email         = ["mail@huydinh.eu"]

  spec.summary       = %q{Materialize (http://materializecss.com) set up for the Rails 4+ asset pipeline.}
  spec.description   = %q{Materialize (http://materializecss.com) set up for the Rails 4+ asset pipeline.}
  spec.homepage      = "https://github.com/Skudo/materialize-rails"
  # spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_dependency 'sass-rails'
  spec.add_dependency 'jquery-rails'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

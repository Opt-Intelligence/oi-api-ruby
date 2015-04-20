# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oi_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'oi-api-ruby'
  spec.version       = OiApi::VERSION
  spec.authors       = ['Jarrod Spillers']
  spec.email         = ['jarrod@stacktact.com']
  spec.description   = %q{Ruby client for Opt Intelligence API, http://www.opt-intelligence.com/}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/wmabee/oi-api-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
  spec.add_dependency 'httparty'
end

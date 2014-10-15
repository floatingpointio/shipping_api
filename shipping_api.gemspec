# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shipping_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'shipping_api'
  spec.version       = ShippingApi::VERSION
  spec.authors       = ['Nikica Jokic','Veljko Dragsic']
  spec.email         = ['neektza@gmail.com','veljko@floatingpoint.io']
  spec.summary       = 'Gem for accessing an international shipping API.'
  spec.description   = 'Wrapping client for REST API'
  spec.homepage      = 'http://github.com/floatingpointio/shipping_api'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 0.9'
  spec.add_dependency 'immutable_struct', '~> 1.1'
  spec.add_dependency 'andand', '~> 1.3'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'dotenv', '~> 0.11'
  spec.add_development_dependency 'webmock', '~> 1.19'
  spec.add_development_dependency 'vcr', '~> 2.9'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/songwriter/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-songwriter"
  spec.version       = OmniAuth::Songwriter::VERSION
  spec.authors       = ["Felix Clack"]
  spec.email         = ["felixclack@gmail.com"]
  spec.description   = %q{Provide access to the OAuth2 provider powering SSO for all things Songwriter}
  spec.summary       = %q{An OmniAuth strategy for Songwriter.io}
  spec.homepage      = "https://github.com/eindx/omniauth-songwriter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth-oauth2"
  spec.add_dependency "hashr"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
end

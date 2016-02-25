# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_hstore_translate/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_admin_hstore_translate"
  spec.version       = RailsAdminHstoreTranslate::VERSION
  spec.authors       = ["GlebTv"]
  spec.email         = ["glebtv@gmail.com"]
  spec.description   = %q{Adds tabbed interface and custom field type for hstore_translate translations to rails_admin}
  spec.summary       = %q{Tabbed interface and custom field type for hstore_translate translations for rails_admin}
  spec.homepage      = "https://github.com/glebtv/rails_admin_hstore_translate"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails'
  spec.add_dependency 'rails_admin'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end

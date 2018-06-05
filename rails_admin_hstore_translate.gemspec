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
  spec.homepage      = "https://gitlab.com/rocket-science/rails_admin_translate"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails_admin_translate'
spec.post_install_message = <<-MESSAGE
!    The 'rails_admin_hstore_translate' gem has been deprecated and has been replaced by 'rails_admin_translate'.
!    See: https://rubygems.org/gems/rails_admin_translate
!    And: https://gitlab.com/rocket-science/rails_admin_translate
MESSAGE
end

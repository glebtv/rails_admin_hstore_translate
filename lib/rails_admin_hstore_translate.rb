require 'rails_admin_hstore_translate/engine'
require 'rails_admin'
require 'hstore_translate'

require 'active_support/concern'
require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'
require 'rails_admin/config/fields/types/string'
require 'rails_admin/config/fields/types/text'
require 'rails_admin/config/fields/types/ck_editor'
require 'rails_admin/config/fields/types/code_mirror'
require 'rails_admin/config/fields/types/wysihtml5'

module RegisterInstances
  extend ActiveSupport::Concern

  included do

    register_instance_option :translations_field do
      (name.to_s + '_translations').to_sym
    end

    register_instance_option :localized? do
      @abstract_model.model_name.constantize.public_instance_methods.include?(translations_field)
    end

    register_instance_option :tabbed do
      true
    end
    
    register_instance_option :allowed_methods do
      localized? ? [method_name, translations_field] : [method_name]
    end

  end

end

module RailsAdmin
  module Config
    module Fields
      module Types

        RailsAdmin::Config::Fields::Types::Text.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_textml : :form_text
          end

        end

        RailsAdmin::Config::Fields::Types::CKEditor.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_ck_editorml : :form_ck_editor
          end

        end

        RailsAdmin::Config::Fields::Types::CodeMirror.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_code_mirrorml : :form_code_mirror
          end

        end

        RailsAdmin::Config::Fields::Types::Wysihtml5.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_wysihtml5ml : :form_wysihtml5
          end

        end

        RailsAdmin::Config::Fields::Types::String.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_fieldml : :form_field
          end

        end

      end
    end
  end
end

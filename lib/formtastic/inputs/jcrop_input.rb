module Formtastic
  module Inputs
    class JcropInput < ::Formtastic::Inputs::FileInput
      include Base
      
      def to_html
        input_wrapping do
          label_html <<
          builder.file_field(method, input_html_options) <<
          jcrop_feature
        end
      end

      private

      def jcrop_feature
        template.render partial: "active_admin_jcrop/jcrop_modal", locals: {field: method, object: @object}
      end

    end
  end
end
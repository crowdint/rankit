module Rankit
  module BootstrapHelper
    def bootstrap_text_field(f, field, options = {})
      input_options = options[:input_options] || {}
      error_message = f.object.errors[field]
      css_class = (error_message.empty? ? '' : 'error')
      error_tag = (error_message.empty? ? '' : content_tag(:span, :class => "help-inline") { error_message.join(', ') })
      content_tag :div, :class => "control-group #{css_class}" do
        f.label(field, :class => "control-label") +
        content_tag(:div, :class => "controls") do
          f.text_field(field, input_options) +
          error_tag
        end
      end
    end
  end
end

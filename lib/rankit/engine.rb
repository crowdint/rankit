module Rankit
  class Engine < ::Rails::Engine
    isolate_namespace Rankit

    initializer 'rankit.action_controller' do |app|
      ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
        html_tag.html_safe
      end
    end
  end
end

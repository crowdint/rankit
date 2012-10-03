module Rankit
  class ApplicationController < ActionController::Base
    def after_sign_out_path_for(resource_or_scope)
      rankit.new_user_session_path
    end
  end
end

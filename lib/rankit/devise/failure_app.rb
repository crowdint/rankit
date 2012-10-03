module Rankit
  module Devise
    class FailureApp < ::Devise::FailureApp
      def redirect_url
        rankit.new_user_session_path
      end
    end
  end
end

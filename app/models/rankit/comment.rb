module Rankit
  class Comment < ActiveRecord::Base
    attr_accessible :comment, :rankable_id, :user_email, :user_id

    belongs_to :user
  end
end

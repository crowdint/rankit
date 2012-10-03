module Rankit
  class Comment < ActiveRecord::Base
    attr_accessible :comment, :rankable_id, :user_email, :user_id

    cached_belongs_to :user, :caches => :email
  end
end

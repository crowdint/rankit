module Rankit
  class User < ActiveRecord::Base
    attr_accessible :email

    has_many :scores, :foreign_key => 'ranker_id'
    has_many :comments

    devise :database_authenticatable, :timeoutable
  end
end

module Rankit
  class User < ActiveRecord::Base
    attr_accessible :email

    devise :database_authenticatable, :timeoutable

  end
end

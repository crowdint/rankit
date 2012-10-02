module Rankit
  class Rankable < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection

    attr_accessible :description, :name
  end
end

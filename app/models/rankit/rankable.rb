module Rankit
  class Rankable < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection

    belongs_to :creator, :class_name => 'User'

    attr_accessible :description, :name
  end
end

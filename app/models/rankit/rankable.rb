module Rankit
  class Rankable < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection

    has_many :scores
    has_many :comments

    validates :name, :presence => true

    belongs_to :creator, :class_name => 'User'

    attr_accessible :description, :name

    before_save :recalculate_average_score

    def average_score!
      (scores.average(:score) || 0) * 100
    end

    def average_score
      self[:average_score] / 100.0
    end

    def recalculate_average_score
      self.average_score = average_score!
    end
  end
end

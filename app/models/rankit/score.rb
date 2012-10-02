module Rankit
  class Score < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection

    belongs_to :rankable

    after_save :update_rankable_score

    SCORE_RANGE = (0..5)

    attr_accessible :rankable_id, :ranker_id, :score

    def update_rankable_score
      rankable.recalculate_average_score
      rankable.save
    end
  end
end

module Rankit
  class Score < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection

    SCORE_RANGE = (0..5)

    attr_accessible :rankable_id, :ranker_id, :score
  end
end

require_dependency "rankit/application_controller"

module Rankit
  class ScoresController < ApplicationController
    before_filter :authenticate_user!
    before_filter :load_rankable

    def edit
      @score = Rankit::Score.find_or_create_by_rankable_id_and_ranker_id(@rankable.id, current_user.id)
    end

    def update
      @score = current_user.scores.find_by_rankable_id(@rankable.id)
      @score.update_attributes(score_params)
      redirect_to rankables_path, :notice => 'Your rank has been recorded'
    end

    private
    def load_rankable
      @rankable = Rankit::Rankable.find(params[:rankable_id])
    end

    def score_params
      params.require(:score).permit(:score)
    end
  end
end

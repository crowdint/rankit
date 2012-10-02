require_dependency "rankit/application_controller"

module Rankit
  class RankablesController < ApplicationController
    before_filter :authenticate_user!

    def index
      @rankables = Rankable.all
    end

    def new
      @rankable = Rankable.new
    end

    def create
      @rankable = Rankable.new(rankable_params)
      if @rankable.save
        redirect_to(rankit.rankables_path)
      end
    end

    private
    def rankable_params
      params.require(:rankable).permit(:name, :description)
    end
  end
end

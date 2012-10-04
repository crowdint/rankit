require_dependency "rankit/application_controller"

module Rankit
  class RankablesController < ApplicationController
    before_filter :authenticate_user!
    before_filter :load_rankable, :only => [ :edit, :update, :destroy ]

    def index
      @rankables = Rankable.all
    end

    def new
      @rankable = Rankable.new
    end

    def create
      @rankable = Rankable.new(rankable_params)
      @rankable.creator = current_user
      if @rankable.save
        redirect_to(rankit.rankables_path)
      else
        render :action => 'new'
      end
    end

    def edit
    end

    def update
      @rankable.update_attributes rankable_params
      if @rankable.save
        redirect_to rankit.rankables_path, :notice => 'Rankable was updated succesfully'
      else
        render :action => 'edit'
      end
    end

    def destroy
      @rankable.destroy
      redirect_to rankit.rankables_path, :notice => 'Rankable was deleted succesfully'
    end

    private
    def rankable_params
      params.require(:rankable).permit(:name, :description)
    end

    def load_rankable
      @rankable = Rankit::Rankable.find(params[:id])
    end
  end
end

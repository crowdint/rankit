require_dependency "rankit/application_controller"

module Rankit
  class CommentsController < ApplicationController
    before_filter :authenticate_user!, :load_rankable

    def index
      @comments = @rankable.comments.order('created_at DESC')
    end

    def new
      @comment = Rankit::Comment.new
    end

    def create
      @comment = @rankable.comments.build(comment_params)
      @comment.user = current_user
      if @comment.save
        redirect_to rankit.rankable_comments_path(@rankable)
      end
    end

    private
    def load_rankable
      @rankable = Rankit::Rankable.find(params[:rankable_id])
    end

    def comment_params
      params.require(:comment).permit(:comment)
    end
  end
end

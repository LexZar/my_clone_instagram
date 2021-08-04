class CommentsController < ApplicationController
    before_action :authenticate_user!
    
    def create
      @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id if user_signed_in?

      if @comment.save
        redirect_to root_path
      else
        redirect_to root_path
      end
    end

    private
     
      def comment_params
        params.require(:comment).permit(:comment,:photo_id)
      end
  end
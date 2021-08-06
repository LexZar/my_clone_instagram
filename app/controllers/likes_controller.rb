class LikesController < ApplicationController
    before_action :authenticate_user!
    
    def save_like
      @like = Like.new(photo_id: params[:photo_id], user_id: current_user.id) 
      @photo_id = params[:photo_id]
      existing_like = Like.where(photo_id: params[:photo_id], user_id: current_user.id)
      respond_to do |format|
        format.js {
          if existing_like.any?
            existing_like.first.destroy
            @success = false
          elsif @like.save
            @success = true    
          else
            @success = false 
          end
            @photo_likes = Photo.find(@photo_id).total_likes_count
            render "photos/like"  
        }
      end 
    end  
  end
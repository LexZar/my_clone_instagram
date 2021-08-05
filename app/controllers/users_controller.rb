class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:profile]

  def profile
    @photos = @user.photos
  end

  def follow_user
    follower_id = params[:follow_id]
    Follower.create(follower_id: current_user.id, following_id: follower_id)
    redirect_to root_path
  end
  
  def unfollow_user
   
  end

  def set_user
    @user = User.find_by_username(params[:username])
  end
end

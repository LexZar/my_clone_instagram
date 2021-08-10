class HomeController < ApplicationController
  before_action :authenticate_user!

  def homepage
    @photo_tape = Photo.where.not(user_id: current_user.id)
    
    @photo = Photo.all
    @comment = Comment.new
    following_id = Follower.where(follower_id: current_user.id).map(&:following_id)
    following_id << current_user.id
    @all_users = User.where.not(id: following_id)

    follower_id = Follower.where(follower_id: current_user.id ).map(&:following_id)
    @no_following_id = User.where(id: follower_id)
    @follow_users = Follower.where(follower_id: current_user.id)
  end

  def set_user
    @user = User.find_by_username(params[:username])
  end
end

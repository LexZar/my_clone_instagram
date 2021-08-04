class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:profile]

  def homepage
    @photo = Photo.all
    @comment = Comment.new
  end

  def profile
    @photos = current_user.photos
  end
  
  def set_user
    @user = User.find_by_username(params[:username])
  end
end

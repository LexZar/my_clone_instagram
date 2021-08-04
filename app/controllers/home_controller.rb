class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def homepage
    @comment = Comment.new
  end
  
end

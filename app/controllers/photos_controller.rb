class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # def index
  #   @photos = Photo.all
  # end

  def profile
    @photos = Photo.all
  end

  # GET /photos/1
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id if user_signed_in?

    if @photo.save
      redirect_to profile_path(current_user.username)
    else
      render :new
    end
  end

  # PATCH/PUT /photos/1
  def update
    if @photo.update(photo_params)
      redirect_to @photo, notice: 'Photo was successfully updated.'
      
    else
      render :new
    end
  end

  # DELETE /photos/1
  def destroy
    if @photo.user_id == current_user.id && user_signed_in?
      @photo.destroy
      redirect_to profile_path(current_user.username), notice: 'Photo was successfully destroyed.'
    else
      redirect_to root_path, notice: 'Photo was not destroyed.' 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_params
      params.require(:photo).permit(:title, :image)
    end
end

class PhotosController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @photos = Photo.includes(:user).order(created_at: 'DESC').page(params[:page]).per(12)
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params)
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
    @comments = @photo.comments.includes(:user)
  end

  private
  def photo_params
    params.require(:photo).permit(:text, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end

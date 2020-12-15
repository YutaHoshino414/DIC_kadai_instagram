class PicturesController < ApplicationController
  before_action :set_picture, only: [:show]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end
 
  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save
      redirect_to pictures_path, notice: "投稿を作成しました！"
      else
        render :new
      end
  end

  def show
  end

  private
  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end

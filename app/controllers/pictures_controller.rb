class PicturesController < ApplicationController
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

  private
  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end
end

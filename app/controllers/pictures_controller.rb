class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def new
    if params[:back]
      @picture = Picture.new(post_params)
    else
      @picture = Picture.new
    end
  end
 
  def confirm
    
    @picture = Picture.new(picture_params)
    render :new if @picture.invalid?
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if params[:back]
      render :new
    else
      if @picture.save
        PictureMailer.picture_mail(@picture).deliver 
        redirect_to pictures_path, notice: "投稿を作成しました！"
      else
        render :new
      end
    end
  end

  def show
    if logged_in?
    @favorite = current_user.favorites.find_by(picture_id: @picture.id)
    else
      redirect_to new_session_path, notice: "ログインが必要です"
    end
  end

  def edit
  end

  def update
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "投稿を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path, notice:"投稿を削除しました"
  end

  private
  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end

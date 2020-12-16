class UsersController < ApplicationController

  def new
    @user =User.new
  end

  def create
    @user = User.new(user_params)
    # @user.image = "default.jpg"
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
     #binding.pry
    if @user.update(user_params)
      redirect_to user_path(@user.id), notice: "プロフィールを編集しました！"
    else
      render :edit
    end
  end

  def like
    @user = User.find(params[:id])
    @favorites = @user.favorite_pictures.all
    #binding.pry
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :image_cache)
  end
end

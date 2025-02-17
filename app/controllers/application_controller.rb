class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate_user
    if @current_user == nil
      flash[:notice] = t('notice.login_needed')
      redirect_to new_session_path
    end
  end
  
  private
  def logged_in_user
    unless logged_in?
      redirect_to new_session_path, notice: "ログインはお済みですか？"
    end
  end
end

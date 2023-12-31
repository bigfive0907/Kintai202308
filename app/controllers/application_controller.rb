class ApplicationController < ActionController::Base
  before_action :set_current_user ,:set_current_manager 
  
  #セッションユーザーを設定
  def set_current_user 
    @current_user = User.find_by(id: session[:user_id]) 
  end
  #セッションマネージャーを設定
  def set_current_manager 
    @current_manager = Manager.find_by(id: session[:manager_id]) 
  end
  
  #ログインしていない場合はhomeに遷移させる
  def authenticate_user
    if @current_user == nil
      flash[:notice] ="ログインが必要です"
      redirect_to("/")
    end
  end

  def authenticate_manager
    if @current_manager == nil
      flash[:notice] ="ログインが必要です"
      redirect_to("/")
    end
  end
 
end

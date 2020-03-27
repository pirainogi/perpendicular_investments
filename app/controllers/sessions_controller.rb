class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:login, :create]

  def login
  end

  def create
    @user = User.find_by(username: params[:username])
    byebug
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:unauthenticated] = "Not Authenticated"
      redirect_to login_path
    end
  end

  def logout
    session.delete(:user_id)
    redirect_to login_path
  end
end

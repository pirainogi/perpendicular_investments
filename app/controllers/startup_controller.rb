class StartupController < ApplicationController
  
  def index
    @user = User.find_by(id: session[:user_id])
    if !!@user
      redirect_to user_path(@user)
    end
  end

end

class ApplicationController < ActionController::Base
  before_action :authorize

    def authorize
      if !User.find_by(id: session[:user_id])
      end
    end
end

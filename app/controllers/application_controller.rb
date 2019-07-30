class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private
    def logged_in_user
      unless logged_in?
        redirect_to login_url
      end
    end

    def admin_user
      user = User.find_by id: session[:user_id]
      unless is_admin?(user.email)
        redirect_to root_url
      end
    end
end

module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user?(user)
    user = current_user
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by id: session[:user_id]
    elsif cookies.signed[:user_id]
      user = User.find_by id: cookies.signed[:user_id]
      if user
        log_in user
        @current_user = user
      end
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def forget(user)
    cookies.delete(:user_id)
  end

  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
end

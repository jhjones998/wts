module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user] = user
  end
  def check_admin
    session.key?(:user) && session[:user]['admin']
  end
end
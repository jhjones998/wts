module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.name
  end

  def check_admin
    User.find(session[:user_id]).admin
  end

end

module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
  def check_admin
    session.key?(:user_id) && User.find(session[:user_id]).admin
  end
end
class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :require_admin
  protect_from_forgery with: :exception
  include SessionsHelper
  include ApplicationHelper

  def require_admin
    user_logged_in = User.find(session[:user_id])
    unless is_admin? user_logged_in
      redirect_to root_path
    end
  end

  def require_login
    unless is_logged_in?
      redirect_to '/login'
    end
  end
end

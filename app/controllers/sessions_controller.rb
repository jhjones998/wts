class SessionsController < ApplicationController
  skip_before_action :require_login
  skip_before_action :require_admin
  def new

  end

  def create
    user = User.find_by(name: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      render 'welcome/index'
    else
      render 'failed'
    end
  end

  def destroy

  end
end

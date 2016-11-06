class SessionsController < ApplicationController
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

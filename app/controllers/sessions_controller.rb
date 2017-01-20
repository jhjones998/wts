class SessionsController < ApplicationController
  skip_before_action :require_login
  skip_before_action :require_admin
  skip_before_action :get_current_user

  def new;

  end

  def create
    user = params[:session][:username].camelcase
    if(user == "Usa")
      user = 'USA';
    end
    if(user == "Uk")
      user = 'UK';
    end
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else
      flash.now[:notice] = 'Login failed'
      render 'new'
    end
  end

  def destroy

  end
end

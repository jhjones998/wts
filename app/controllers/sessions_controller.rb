class SessionsController < ApplicationController
  skip_before_action :require_login
  skip_before_action :require_admin
  skip_before_action :get_current_user

  def new;

  end

  def create
    userp = params[:session][:username].camelcase
    if(userp == "Usa")
      userp = 'USA';
    end
    if(userp == "Uk")
      userp = 'UK';
    end
    if(userp == "WtsAdmin")
      userp = 'wts_admin';
    end

    user = User.find_by(name: userp)
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

class WelcomeController < ApplicationController
  skip_before_action :require_admin
  def index
    @teches = MasterTech.all
  end
end

class WelcomeController < ApplicationController
  skip_before_action :require_admin
  def index
    @current_user = get_current_user
    @countries = Country.all.order(:name)
    @current_country = @countries[0]
  end

  def researching(tech_id, val)
    tech_instance = TechInstance.find(tech_id)
    if @current_user.can_research?(tech_instance)
      tech_instance.update(researching: val)
    end
  end
end

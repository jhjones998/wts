class WelcomeController < ApplicationController
  skip_before_action :require_admin
  def index
    @current_user = get_current_user
    @countries = Country.all.order(:name)
    @current_country = @countries[0]
  end

  def researching(tech_id, val)
    tech_instance = TechInstance.find(tech_id)
    if @current_user.owns_tech_instance?(tech_instance)
      tech_instance.update(researching: val)
    end
  end

  def split_artifact(country_id, level)
    country = Country.find(country_id)
    if @current_user.owns_country?(country)
      if 2 <= level <= 6
        Artifact.transaction do
          if country.artifact["l#{level}"] > 0
            country.artifact.decrement!("l#{level}")
            country.artifact.increment!("l#{level - 1}", by = 2)
          end
        end
      end
    end
  end

  def combine_artifacts(country_id, level)
    country = Country.find(country_id)
    if @current_user.owns_country?(country)
      if 1 <= level <= 5
        Artifact.transaction do
          if country.artifact["l#{level - 1}"] > 0
            country.artifact.increment!("l#{level + 1}")
            country.artifact.decrement!("l#{level}", by = 2)
          end
        end
      end
    end
  end
end

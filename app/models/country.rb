class Country < ApplicationRecord
  belongs_to :user
  def researched_techs
    country.tech_instances.find_by(researched: true).order(:updated_at)
  end
  def researching_techs
    country.tech_instances.find_by(researching: true, researched: false).order(:updated_at)
  end
  def unresearched_techs
    country.tech_instances.find_by(researched: false).order(:updated_at)
  end
end

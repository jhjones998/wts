class Country < ApplicationRecord
  belongs_to :user
  has_many :tech_instances, inverse_of: :country
  has_one :artifact, inverse_of: :country

  def researched_techs
    self.tech_instances.where(researched: true).order(:updated_at)
  end
  def researching_techs
    self.tech_instances.where(researching: true, researched: false).order(:updated_at)
  end
  def unresearched_techs
    self.tech_instances.where(researched: false, visible: true).order(:updated_at)
  end
end

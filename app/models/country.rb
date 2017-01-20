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
  def invisible_techs
    self.tech_instances.where(researched: false, visible: true).order(:updated_at)
  end
  def flag
    self.name+' Flag.png'
  end
  def can_combine?(level)
    return false if artifact["l#{level}"]<2
    return true if user.admin
    @I1_id = MasterTech.find_by_wts_id('I1').id
    return TechInstance.find_by(:country_id => self.id, :master_tech_id => @I1_id).researched
  end
end

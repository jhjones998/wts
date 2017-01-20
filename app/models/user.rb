class User < ApplicationRecord
  has_many :accesses, inverse_of: :user

  has_secure_password
  def has_access_to_tech?(country)
    if self.admin
      return true
    end
    self.accesses.exists?(country: country)
  end
  def has_access_to_artifacts?(country)
    if self.admin
      return true
    end
    self.accesses.exists?(country: country, artifacts: true)
  end
  def can_start_research?(tech_instance)
    if tech_instance.researched || tech_instance.researching || tech_instance.country.artifact["l#{tech_instance.master_tech.level}"] < 1
      return false
    end
    #Check for prereq
     if (tech_instance.master_tech.level > 1)
       @master_id = TechTree.find_by(:child_id => tech_instance.master_tech_id).master_tech.id;
       return false if !TechInstance.find_by(:country_id => tech_instance.country_id, :master_tech_id => @master_id).researched
     end
    if self.admin
      return true
    end
    tech_instance.country.user.id == self.id
  end
  def can_cancel_research?(tech_instance)
    if tech_instance.researched || !tech_instance.researching
      return false
    end
    if self.admin
      return true
    end
    tech_instance.country.user.id == self.id
  end
end

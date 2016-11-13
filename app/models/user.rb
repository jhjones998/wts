class User < ApplicationRecord
  has_secure_password
  def has_access_to_tech?(country)
    if user.admin
      return true
    end
    self.accesses.exists?(country: country)
  end
  def has_access_to_artifacts?(country)
    if user.admin
      return true
    end
    self.accesses.exists?(country: country, artifacts: true)
  end
  def can_research?(tech_instance)
    tech_instance.country.user.id == self.id
  end
end

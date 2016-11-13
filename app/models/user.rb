class User < ApplicationRecord
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
  def owns_tech_instance?(tech_instance)
    if self.admin
      return true
    end
    tech_instance.country.user.id == self.id
  end
  def owns_country?(country)
    if self.admin
      return true
    end
    country.user_id == self.id
  end
end

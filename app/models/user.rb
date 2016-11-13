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
  def can_toggle_researching?(tech_instance)
    if self.admin
      return true
    end
    tech_instance.country.user.id == self.id
  end
  def can_split?(artifact)
    if self.admin
      return true
    end
    artifact.country.user_id == self.id
  end
  def can_combine?(artifact)
    if self.admin
      return true
    end
    artifact.country.user_id == self.id
  end
end

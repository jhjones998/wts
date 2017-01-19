class Artifact < ApplicationRecord
  belongs_to :country, inverse_of: :artifact

  def split(level, user)
    if user.can_split?(artifact) && (2 <= level <= 6)
      self.transaction do
        if self["l#{level}"] > 0
          self.decrement!("l#{level}")
          self.increment!("l#{level - 1}", by = 2)
        end
      end
    end
  end

  def combine(level, user)
    if user.can_combine?(self) && (1 <= level) && (level <= 5)
      self.transaction do
        if self["l#{level}"] > 1
          self.increment!("l#{level+1}")
          self.decrement!("l#{level}", by = 2)
        end
      end
    end
  end

end

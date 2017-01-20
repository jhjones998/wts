class Artifact < ApplicationRecord
  belongs_to :country, inverse_of: :artifact

  def downgrade(level)
    if country.can_downgrade?(level) && (1 < level) && (level <= 6)
      self.transaction do
        if self["l#{level}"] > 0
          self.decrement!("l#{level}")
          self.increment!("l#{level - 1}")
        end
      end
    end
  end

  def combine(level)
    if country.can_combine?(level) && (1 <= level) && (level <= 5)
      self.transaction do
        if self["l#{level}"] > 1
          self.increment!("l#{level+1}")
          self.decrement!("l#{level}", by = 2)
        end
      end
    end
  end

end

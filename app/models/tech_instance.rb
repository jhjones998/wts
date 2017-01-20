class TechInstance < ApplicationRecord
  belongs_to :master_tech
  belongs_to :country, inverse_of: :tech_instances

  def start_research(user)
    if user.can_start_research?(self)
      self.transaction do
        self.country.artifact.decrement!("l#{master_tech.level}")
        self.researching = true
      end
      save
    end
  end

  def cancel_research(user)
    if user.can_cancel_research?(self)
      self.transaction do
        self.country.artifact.increment!("l#{master_tech.level}")
        self.researching = false
      end
      save
    end
  end

  def complete_research
    self.researching = false
    self.researched = true
    save
    # Update Tech children to make visible
    @children = TechTree.where('master_tech_id = ?', self.master_tech_id)
    @children.each do |c|
      @child = TechInstance.find_by(master_tech_id:c.child_id, country_id:self.country_id)
      @child.visible = true
      @child.save
    end
    save

  end
end

class TechTree < ApplicationRecord
  belongs_to :master_tech, inverse_of: :tech_tree
  belongs_to :child, class_name: "MasterTech"
end

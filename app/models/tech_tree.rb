class TechTree < ApplicationRecord
  belongs_to :master_tech
  belongs_to :child, class_name: "MasterTech"
end

class TechTree < ApplicationRecord
  belongs_to :master_tech
  has_many :children, class_name: "MasterTech", foreign_key: "child_id"
end

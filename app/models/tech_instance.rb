class TechInstance < ApplicationRecord
  belongs_to :master_tech
  belongs_to :country, inverse_of: :tech_instances
end

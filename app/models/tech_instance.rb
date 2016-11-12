class TechInstance < ApplicationRecord
  belongs_to :master_tech
  belongs_to :country
end

class MasterTech < ApplicationRecord
  has_one :tech_tree, inverse_of: :master_tech
end

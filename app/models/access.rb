class Access < ApplicationRecord
  belongs_to :user, inverse_of: :accesses
  belongs_to :country
end

class ReleaseGate < ApplicationRecord
  has_many :capability_requests
  has_many :releases
end

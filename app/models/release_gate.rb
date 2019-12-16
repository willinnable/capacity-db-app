class ReleaseGate < ApplicationRecord
  has_many :capability_requests
end

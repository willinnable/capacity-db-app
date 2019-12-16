class CapabilityRequestResourceRelease < ApplicationRecord
  belongs_to :capability_request
  belongs_to :resource
  belongs_to :release
  
end

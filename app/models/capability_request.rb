class CapabilityRequest < ApplicationRecord
  belongs_to :complexity
  belongs_to :work_package
  belongs_to :release_gate
  has_many :capability_request_resource_releases

end

class WorkPackage < ApplicationRecord
  belongs_to :market
  belongs_to :release_gate

end

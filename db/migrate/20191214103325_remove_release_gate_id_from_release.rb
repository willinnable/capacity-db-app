class RemoveReleaseGateIdFromRelease < ActiveRecord::Migration[6.0]
  def change
    remove_column :releases, :release_gate_id, :integer
  end
end

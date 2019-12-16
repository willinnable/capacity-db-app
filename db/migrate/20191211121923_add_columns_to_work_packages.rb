class AddColumnsToWorkPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :work_packages, :actual_release_date, :date
    add_column :work_packages, :release_gate_id, :integer
  end
end

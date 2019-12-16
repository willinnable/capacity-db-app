class RemoveColumnsFromWorkPackages < ActiveRecord::Migration[6.0]
  def change

    remove_column :work_packages, :date, :string

    remove_column :work_packages, :release_gate_id, :string

    remove_column :work_packages, :integer, :string
  end
end

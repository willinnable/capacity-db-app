class RemoveColumnFromWorkPackages < ActiveRecord::Migration[6.0]
  def change

    remove_column :work_packages, :actual_release_date, :string
  end
end

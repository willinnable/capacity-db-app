class AddColumnDemand < ActiveRecord::Migration[6.0]
  def change
    add_column :capability_request_resource_releases, :demand, :integer
  end
end

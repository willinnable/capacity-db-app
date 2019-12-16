class CreateCapabilityRequestResourceReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :capability_request_resource_releases do |t|
      t.integer :capability_id
      t.integer :resource_id
      t.integer :release_id

      t.timestamps
    end
  end
end

class CreateCapabilityRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :capability_requests do |t|
      t.string :name
      t.string :code
      t.integer :work_package_id
      t.integer :complexity_id
      t.integer :release_gate_id
      t.string :comments

      t.timestamps
    end
  end
end

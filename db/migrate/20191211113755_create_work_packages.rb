class CreateWorkPackages < ActiveRecord::Migration[6.0]
  def change
    create_table :work_packages do |t|
      t.string :name
      t.string :code
      t.date :target_release_date
      t.string :actual_release_date
      t.string :date
      t.string :release_gate_id
      t.string :integer
      t.integer :market_id

      t.timestamps
    end
  end
end

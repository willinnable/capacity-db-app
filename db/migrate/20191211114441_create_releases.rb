class CreateReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :releases do |t|
      t.integer :release_gate_id
      t.string :name
      t.string :comments
      t.date :release_date

      t.timestamps
    end
  end
end

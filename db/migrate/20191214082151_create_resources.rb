class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :code
      t.integer :number
      t.string :comments

      t.timestamps
    end
  end
end

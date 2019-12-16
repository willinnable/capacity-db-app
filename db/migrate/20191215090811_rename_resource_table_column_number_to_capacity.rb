class RenameResourceTableColumnNumberToCapacity < ActiveRecord::Migration[6.0]
  def change
    rename_column :resources, :number, :capacity
  end
end

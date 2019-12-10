class AddCodeToMarkets < ActiveRecord::Migration[6.0]
  def change
    add_column :markets, :code, :string
  end
end

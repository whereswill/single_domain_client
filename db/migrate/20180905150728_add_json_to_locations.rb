class AddJsonToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :inventory_json, :string
  end
end

class ChangeJsonToBeTextTypeInLocations < ActiveRecord::Migration[5.2]
  def up
    change_column :locations, :inventory_json, :text
  end

  def down
    change_column :locations, :inventory_json, :string
  end
end

class AddUrnToLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :urn, :string
  end
end

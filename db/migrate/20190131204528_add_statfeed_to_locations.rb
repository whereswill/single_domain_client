class AddStatfeedToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :statfeed, :text
  end
end

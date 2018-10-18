class AddTextAndIframeToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :text_snippet, :text
    add_column :locations, :iframe_source, :string
  end
end

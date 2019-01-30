class CreateStaticFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :static_feeds do |t|
      t.text :static_feed

      t.timestamps
    end
  end
end

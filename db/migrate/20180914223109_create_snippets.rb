class CreateSnippets < ActiveRecord::Migration[5.2]
  def change
    create_table :snippets do |t|
      t.text :client_snippet

      t.timestamps
    end
  end
end

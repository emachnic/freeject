class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :story_type
      t.text :description
      t.integer :project_id

      t.timestamps
    end
    
    add_index :stories, :title
  end
end

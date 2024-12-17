class CreateStoryParts < ActiveRecord::Migration[8.0]
  def change
    create_table :story_parts do |t|
      t.references :scenario, null: false, foreign_key: true
      t.integer :part_number
      t.text :content

      t.timestamps
    end
  end
end

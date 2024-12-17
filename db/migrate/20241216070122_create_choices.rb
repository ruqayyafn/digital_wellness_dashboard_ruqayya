class CreateChoices < ActiveRecord::Migration[8.0]
  def change
    create_table :choices do |t|
      t.references :story_part, null: false, foreign_key: true
      t.string :choice_text
      t.text :evaluation_text

      t.timestamps
    end
  end
end

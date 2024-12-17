class CreateEducationalParagraphs < ActiveRecord::Migration[8.0]
  def change
    create_table :educational_paragraphs do |t|
      t.string :title
      t.text :content
      t.references :educational_popup, null: false, foreign_key: true

      t.timestamps
    end
  end
end

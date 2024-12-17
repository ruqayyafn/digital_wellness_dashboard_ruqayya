class CreateEducationalPopups < ActiveRecord::Migration[8.0]
  def change
    create_table :educational_popups do |t|
      t.references :scenario, null: false, foreign_key: true

      t.timestamps
    end
  end
end

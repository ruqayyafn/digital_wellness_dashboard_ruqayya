# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_12_16_070201) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "choices", force: :cascade do |t|
    t.integer "story_part_id", null: false
    t.string "choice_text"
    t.text "evaluation_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_part_id"], name: "index_choices_on_story_part_id"
  end

  create_table "educational_paragraphs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "educational_popup_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["educational_popup_id"], name: "index_educational_paragraphs_on_educational_popup_id"
  end

  create_table "educational_popups", force: :cascade do |t|
    t.integer "scenario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scenario_id"], name: "index_educational_popups_on_scenario_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "story_parts", force: :cascade do |t|
    t.integer "scenario_id", null: false
    t.integer "part_number"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scenario_id"], name: "index_story_parts_on_scenario_id"
  end

  add_foreign_key "choices", "story_parts"
  add_foreign_key "educational_paragraphs", "educational_popups"
  add_foreign_key "educational_popups", "scenarios"
  add_foreign_key "story_parts", "scenarios"
end

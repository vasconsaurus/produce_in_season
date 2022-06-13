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

ActiveRecord::Schema[7.0].define(version: 2022_06_13_143721) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_seasons", force: :cascade do |t|
    t.integer "month_index", null: false
    t.string "country_code", null: false
    t.bigint "produce_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produce_item_id"], name: "index_item_seasons_on_produce_item_id"
  end

  create_table "produce_items", force: :cascade do |t|
    t.string "name", null: false
    t.string "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_produce_items_on_name", unique: true
  end

  add_foreign_key "item_seasons", "produce_items"
end

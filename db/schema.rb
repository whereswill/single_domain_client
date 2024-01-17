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

ActiveRecord::Schema.define(version: 2021_04_14_235720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_features_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "wow_snippet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "phone"
    t.text "inventory_json"
    t.text "text_snippet"
    t.string "iframe_source"
    t.string "urn"
  end

  create_table "snippets", force: :cascade do |t|
    t.text "client_snippet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "static_feeds", force: :cascade do |t|
    t.text "static_feed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "features", "locations"
end

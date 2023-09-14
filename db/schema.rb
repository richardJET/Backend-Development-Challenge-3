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

ActiveRecord::Schema[7.0].define(version: 2023_09_13_214454) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.string "host_name"
    t.string "neighbourhood"
    t.integer "accommodates"
    t.integer "bedrooms"
    t.integer "beds"
    t.decimal "price"
    t.boolean "has_availability"
    t.string "city", default: "Dublin"
    t.string "region", default: "Leinster"
    t.string "country", default: "Ireland"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "user_id", id: :serial, force: :cascade do |t|
    t.string "display_name", limit: 255, null: false
    t.string "email", limit: 255, null: false
    t.string "password", limit: 255, null: false
    t.index ["email"], name: "users_email_key", unique: true
  end

end

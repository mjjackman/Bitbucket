# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170713113842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.string "name"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "traveller_id"
    t.integer "to_do_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "to_do_items", force: :cascade do |t|
    t.string "activity"
    t.integer "destination_id"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "traveller_destinations", force: :cascade do |t|
    t.bigint "traveller_id"
    t.bigint "destination_id"
    t.index ["destination_id"], name: "index_traveller_destinations_on_destination_id"
    t.index ["traveller_id"], name: "index_traveller_destinations_on_traveller_id"
  end

  create_table "travellers", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_travellers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_travellers_on_reset_password_token", unique: true
  end

end

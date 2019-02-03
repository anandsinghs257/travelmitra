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

ActiveRecord::Schema.define(version: 2019_02_03_113833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "cover_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agency_branches", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.float "latitude"
    t.string "longitude"
    t.boolean "is_head_office"
    t.integer "agency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agency_contacts", force: :cascade do |t|
    t.string "contact_number"
    t.string "contact_person"
    t.bigint "agency_branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agency_branch_id"], name: "index_agency_contacts_on_agency_branch_id"
  end

  create_table "agency_destination_cities", force: :cascade do |t|
    t.bigint "agency_branch_id"
    t.bigint "destination_city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agency_branch_id"], name: "index_agency_destination_cities_on_agency_branch_id"
    t.index ["destination_city_id"], name: "index_agency_destination_cities_on_destination_city_id"
  end

  create_table "destination_cities", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "agency_contacts", "agency_branches"
  add_foreign_key "agency_destination_cities", "agency_branches"
  add_foreign_key "agency_destination_cities", "destination_cities"
end

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

ActiveRecord::Schema.define(version: 20181022130137) do

  create_table "attendances", force: :cascade do |t|
    t.integer "user_id"
    t.integer "invitation_id"
    t.string "lastname"
    t.string "firstname"
    t.string "lastname_kana"
    t.string "firstname_kana"
    t.integer "postcode"
    t.string "address"
    t.string "building_name"
    t.integer "phonenumber"
    t.string "email"
    t.string "allergy"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invitations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "type_id"
    t.integer "design_id"
    t.string "title"
    t.string "groom_msg"
    t.string "bride_msg"
    t.string "greeting"
    t.datetime "date1"
    t.datetime "opentime1"
    t.datetime "starttime1"
    t.string "place1"
    t.integer "phonenumber1"
    t.string "place_url1"
    t.string "note1"
    t.datetime "date2"
    t.datetime "opentime2"
    t.datetime "starttime2"
    t.string "place2"
    t.integer "phonenumber2"
    t.string "place_url2"
    t.string "note2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address1"
    t.string "address2"
    t.string "groom_last"
    t.string "groom_first"
    t.string "bride_last"
    t.string "bride_first"
    t.string "groom_last_kana"
    t.string "groom_first_kana"
    t.string "bride_last_kana"
    t.string "bride_first_kana"
  end

  create_table "surprises", force: :cascade do |t|
    t.integer "user_id"
    t.integer "surprisecard_id"
    t.string "title"
    t.datetime "date"
    t.text "message"
    t.string "groom_last"
    t.string "groom_first"
    t.string "bride_last"
    t.string "bride_first"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.string "activation_digest"
    t.boolean "activated"
    t.datetime "activated_at"
    t.string "user_image"
    t.string "provider"
    t.string "uid"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

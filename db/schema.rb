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

ActiveRecord::Schema.define(version: 20190115092920) do

  create_table "attendance_forms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "invitation_id"
    t.integer "type_id"
    t.datetime "due_date"
    t.text "greeting"
    t.boolean "name", default: true, null: false
    t.integer "name_sel", default: 0
    t.boolean "kana", default: false, null: false
    t.integer "kana_sel", default: 1
    t.boolean "postcode", default: false, null: false
    t.integer "postcode_sel", default: 1
    t.boolean "address", default: false, null: false
    t.integer "address_sel", default: 1
    t.boolean "phonenumber", default: false, null: false
    t.integer "phonenumber_sel", default: 1
    t.boolean "email", default: true, null: false
    t.integer "email_sel", default: 0
    t.boolean "allergy", default: false, null: false
    t.integer "allergy_sel", default: 1
    t.boolean "message", default: false, null: false
    t.integer "message_sel", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendances", force: :cascade do |t|
    t.integer "user_id"
    t.integer "invitation_id"
    t.string "name"
    t.string "kana"
    t.string "postcode"
    t.string "address"
    t.string "phonenumber"
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
    t.text "greeting"
    t.datetime "date1"
    t.string "openhour1"
    t.string "openminute1"
    t.string "starthour1"
    t.string "startminute1"
    t.string "place1"
    t.string "address1"
    t.string "phonenumber1"
    t.string "place_url1"
    t.text "note1"
    t.datetime "date2"
    t.string "openhour2"
    t.string "openminute2"
    t.string "starthour2"
    t.string "startminute2"
    t.string "place2"
    t.string "address2"
    t.string "phonenumber2"
    t.string "place_url2"
    t.text "note2"
    t.string "groom_last"
    t.string "groom_first"
    t.string "bride_last"
    t.string "bride_first"
    t.string "groom_last_kana"
    t.string "groom_first_kana"
    t.string "bride_last_kana"
    t.string "bride_first_kana"
    t.boolean "public", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "message_cards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "msg_design_id"
    t.string "title"
    t.datetime "date"
    t.text "greeting"
    t.string "groom_last"
    t.string "groom_first"
    t.string "groom_last_kana"
    t.string "groom_first_kana"
    t.string "bride_last"
    t.string "bride_first"
    t.string "bride_last_kana"
    t.string "bride_first_kana"
    t.boolean "public", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.string "activation_digest"
    t.boolean "activated", default: false, null: false
    t.datetime "activated_at"
    t.string "user_image"
    t.string "provider"
    t.string "uid"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["name"], name: "index_users_on_name"
  end

end

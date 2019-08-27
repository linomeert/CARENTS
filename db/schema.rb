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


ActiveRecord::Schema.define(version: 2019_08_27_090959) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.text "biography"
    t.integer "age"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_children_on_user_id"
  end

  create_table "children_conditions", id: false, force: :cascade do |t|
    t.bigint "child_id", null: false
    t.bigint "condition_id", null: false
    t.index ["child_id", "condition_id"], name: "index_children_conditions_on_child_id_and_condition_id"
    t.index ["condition_id", "child_id"], name: "index_children_conditions_on_condition_id_and_child_id"
  end

  create_table "children_interests", id: false, force: :cascade do |t|
    t.bigint "child_id", null: false
    t.bigint "interest_id", null: false
    t.index ["child_id", "interest_id"], name: "index_children_interests_on_child_id_and_interest_id"
    t.index ["interest_id", "child_id"], name: "index_children_interests_on_interest_id_and_child_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations_users", id: false, force: :cascade do |t|
    t.bigint "conversation_id", null: false
    t.bigint "user_id", null: false
    t.index ["conversation_id", "user_id"], name: "index_conversations_users_on_conversation_id_and_user_id"
    t.index ["user_id", "conversation_id"], name: "index_conversations_users_on_user_id_and_conversation_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "sender_id"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "readat"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "playdates", force: :cascade do |t|
    t.string "location"
    t.text "description"
    t.boolean "status"
    t.datetime "date"
    t.bigint "inviter_id"
    t.bigint "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "notified_acceptance"
    t.index ["inviter_id"], name: "index_playdates_on_inviter_id"
    t.index ["receiver_id"], name: "index_playdates_on_receiver_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "recommend"
    t.bigint "playdate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["playdate_id"], name: "index_reviews_on_playdate_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "address"
    t.string "photo"
    t.text "biography"
    t.float "latitude"
    t.float "longitude"
    t.string "bannerphoto"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "children", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users", column: "sender_id"
  add_foreign_key "playdates", "users", column: "inviter_id"
  add_foreign_key "playdates", "users", column: "receiver_id"
  add_foreign_key "reviews", "playdates"
end

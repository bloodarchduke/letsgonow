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

ActiveRecord::Schema.define(version: 20171119032105) do

  create_table "comments", force: :cascade do |t|
    t.integer "id_post", null: false
    t.integer "user_id", null: false
    t.string "comment", null: false
    t.boolean "seen", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "image", null: false
    t.integer "id_post", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "content", null: false
    t.string "title", null: false
    t.string "address_name", null: false
    t.integer "id_district", null: false
    t.integer "cost"
    t.string "vehicle"
    t.integer "like_count", null: false
    t.integer "view", null: false
    t.boolean "accept", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_posts", force: :cascade do |t|
    t.integer "id_post", null: false
    t.integer "id_user", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

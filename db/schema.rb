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

ActiveRecord::Schema.define(version: 20170305164419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bunnies", force: :cascade do |t|
    t.string   "name"
    t.string   "breed"
    t.string   "weight"
    t.string   "temperament"
    t.integer  "age"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "img_url"
  end

  create_table "bunny_hobbies", force: :cascade do |t|
    t.integer  "bunny_id"
    t.integer  "hobby_id"
    t.integer  "proficiency"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bunny_id"], name: "index_bunny_hobbies_on_bunny_id", using: :btree
    t.index ["hobby_id"], name: "index_bunny_hobbies_on_hobby_id", using: :btree
  end

  create_table "hobbies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bunny_hobbies", "bunnies"
  add_foreign_key "bunny_hobbies", "hobbies"
end

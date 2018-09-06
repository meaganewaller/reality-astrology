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

ActiveRecord::Schema.define(version: 2018_09_03_235646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "big_brother_contestants", force: :cascade do |t|
    t.bigint "contestant_id"
    t.bigint "season_id"
    t.integer "place"
    t.boolean "jury"
    t.integer "votes_against"
    t.integer "day_out"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contestant_id"], name: "index_big_brother_contestants_on_contestant_id"
    t.index ["season_id"], name: "index_big_brother_contestants_on_season_id"
  end

  create_table "contestants", force: :cascade do |t|
    t.string "name"
    t.string "birthday"
    t.string "sign"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "birthday"], name: "index_contestants_on_name_and_birthday", unique: true
  end

  create_table "season_contestants", force: :cascade do |t|
    t.bigint "contestant_id"
    t.bigint "season_id"
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contestant_id"], name: "index_season_contestants_on_contestant_id"
    t.index ["season_id"], name: "index_season_contestants_on_season_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.integer "season_number"
    t.bigint "television_show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["television_show_id"], name: "index_seasons_on_television_show_id"
  end

  create_table "survivor_contestants", force: :cascade do |t|
    t.bigint "contestant_id"
    t.bigint "season_id"
    t.integer "place"
    t.boolean "jury"
    t.integer "votes_against"
    t.integer "day_out"
    t.string "tribe"
    t.boolean "merged"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contestant_id"], name: "index_survivor_contestants_on_contestant_id"
    t.index ["season_id"], name: "index_survivor_contestants_on_season_id"
  end

  create_table "television_shows", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "big_brother_contestants", "contestants"
  add_foreign_key "big_brother_contestants", "seasons"
  add_foreign_key "season_contestants", "contestants"
  add_foreign_key "season_contestants", "seasons"
  add_foreign_key "seasons", "television_shows"
  add_foreign_key "survivor_contestants", "contestants"
  add_foreign_key "survivor_contestants", "seasons"
end

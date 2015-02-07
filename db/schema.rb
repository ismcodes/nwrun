# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150204203424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_managers", force: :cascade do |t|
    t.decimal  "stdev"
    t.integer  "mean"
    t.integer  "number_races"
    t.string   "event_name"
    t.integer  "runner_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "meets", force: :cascade do |t|
    t.date     "_on"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", force: :cascade do |t|
    t.integer  "runner_id"
    t.integer  "race_id"
    t.integer  "finish_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "event"
    t.integer  "meet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runners", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signups", force: :cascade do |t|
    t.integer  "runner_id"
    t.integer  "meet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

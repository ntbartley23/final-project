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

ActiveRecord::Schema.define(version: 20160105205034) do

  create_table "grades", force: :cascade do |t|
    t.integer  "score"
    t.integer  "student_id"
    t.integer  "story_id"
    t.integer  "average"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "previous_score"
    t.string   "attempted_phrase"
  end

  create_table "phrases", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "story_id"
  end

  create_table "stories", force: :cascade do |t|
    t.integer  "numword"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "book_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "teacher_id"
    t.integer  "phrase_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.date     "birthdate"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "address"
    t.string   "sname"
    t.string   "saddress"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

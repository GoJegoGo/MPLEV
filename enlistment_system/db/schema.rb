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

ActiveRecord::Schema.define(version: 20170421090340) do

  create_table "assessments", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "student_id"
    t.string   "class_id"
    t.string   "package_id"
    t.integer  "payment_id"
    t.integer  "period_id"
    t.text     "announcement"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "class_catalogs", force: :cascade do |t|
    t.string   "class_id"
    t.string   "venue_address"
    t.time     "time_start"
    t.time     "time_end"
    t.date     "date_inclusive"
    t.string   "subject_list"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "class_lists", force: :cascade do |t|
    t.string   "class_id"
    t.integer  "student_id"
    t.integer  "period_id"
    t.string   "professor_note"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string   "package_id"
    t.string   "name"
    t.string   "package_type"
    t.decimal  "initial_price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "name"
    t.string   "email_ad"
    t.string   "high_school"
    t.datetime "birthdate"
    t.integer  "age"
    t.string   "contact_number"
    t.string   "father_name"
    t.string   "mother_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end

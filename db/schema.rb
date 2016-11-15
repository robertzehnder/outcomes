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

ActiveRecord::Schema.define(version: 20161115145957) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string   "cohort_type"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "homeworks", force: :cascade do |t|
    t.text     "brand_strengths"
    t.text     "brand_values"
    t.text     "brand_interests"
    t.text     "brand_personality"
    t.text     "brand_achievement"
    t.text     "brand_mentor"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "links", force: :cascade do |t|
    t.string   "title"
    t.string   "link_type"
    t.text     "address"
    t.integer  "roadmap_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roadmaps", force: :cascade do |t|
    t.integer  "week"
    t.text     "title"
    t.text     "content"
    t.text     "goal"
    t.text     "theme"
    t.text     "materials"
    t.text     "workDue"
    t.text     "homework"
    t.text     "smallGroup"
    t.text     "resources"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "image_url"
    t.integer  "homework_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

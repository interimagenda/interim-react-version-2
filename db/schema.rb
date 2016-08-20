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

ActiveRecord::Schema.define(version: 20160820113250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freelancers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.date     "start_date"
    t.integer  "employer_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "offered_pay_rate"
    t.text     "job_description"
    t.string   "job_city"
    t.string   "job_country"
    t.integer  "hours_a_week"
    t.string   "experience_requirement"
    t.decimal  "pay_rate_minimum"
    t.decimal  "pay_rate_maximum"
    t.text     "responsibilities"
    t.string   "education_or_experience_level"
    t.string   "official_requirements"
    t.text     "certificate_requirements"
    t.text     "skill_requirements"
  end

  add_index "jobs", ["employer_id"], name: "index_jobs_on_employer_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "type"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.string   "gender"
    t.string   "business"
    t.text     "description"
    t.string   "country"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "github"
    t.string   "avatar"
    t.string   "city"
    t.string   "company_name"
    t.string   "company_location"
    t.string   "education"
    t.string   "field"
    t.string   "availability"
    t.decimal  "pay_rate"
    t.text     "traits"
    t.text     "skills"
    t.text     "credentials"
    t.text     "certificates"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "jobs", "employers"
end

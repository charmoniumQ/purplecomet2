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

ActiveRecord::Schema.define(version: 20160724204358) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street",     null: false
    t.string   "city"
    t.string   "state"
    t.string   "country",    null: false
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index [nil], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "question_number", null: false
    t.integer  "answer"
    t.integer  "submission_id",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["submission_id"], name: "index_answers_on_submission_id"
    t.index [nil], name: "index_answers_on_submission"
  end

  create_table "contestants", force: :cascade do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name",                   limit: 70,              null: false
    t.integer  "grade",                                          null: false
    t.integer  "team_id",                                        null: false
    t.integer  "school_id",                                      null: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["confirmation_token"], name: "index_contestants_on_confirmation_token", unique: true
    t.index ["email"], name: "index_contestants_on_email", unique: true
    t.index ["reset_password_token"], name: "index_contestants_on_reset_password_token", unique: true
    t.index ["school_id"], name: "index_contestants_on_school_id"
    t.index ["team_id"], name: "index_contestants_on_team_id"
    t.index [nil], name: "index_contestants_on_team"
  end

  create_table "divisions", force: :cascade do |t|
    t.string   "longname",   null: false
    t.string   "shortname",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "longtitle",     null: false
    t.string   "shorttitle",    null: false
    t.datetime "startdatetime", null: false
    t.datetime "enddatetime",   null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_schools_on_address_id"
    t.index [nil], name: "index_schools_on_division"
  end

  create_table "submissions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supervisors", force: :cascade do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name",                   limit: 70,              null: false
    t.string   "phone",                  limit: 20,              null: false
    t.integer  "school_id",                                      null: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["confirmation_token"], name: "index_supervisors_on_confirmation_token", unique: true
    t.index ["email"], name: "index_supervisors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_supervisors_on_reset_password_token", unique: true
    t.index ["school_id"], name: "index_supervisors_on_school_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "school_id",     null: false
    t.integer  "event_id",      null: false
    t.integer  "division_id",   null: false
    t.integer  "supervisor_id", null: false
    t.integer  "submission_id"
    t.datetime "starttime"
    t.integer  "correct_count"
    t.integer  "rank"
    t.integer  "male_count"
    t.integer  "female_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["division_id"], name: "index_teams_on_division_id"
    t.index ["event_id"], name: "index_teams_on_event_id"
    t.index ["school_id"], name: "index_teams_on_school_id"
    t.index ["submission_id"], name: "index_teams_on_submission_id"
    t.index ["supervisor_id"], name: "index_teams_on_supervisor_id"
    t.index [nil], name: "index_teams_on_division"
    t.index [nil], name: "index_teams_on_supervisor"
  end

end

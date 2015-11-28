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

ActiveRecord::Schema.define(version: 20151124183409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attempts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "answer1"
    t.integer  "answer2"
    t.integer  "answer3"
    t.integer  "answer4"
    t.integer  "answer5"
    t.integer  "answer6"
    t.integer  "answer7"
    t.integer  "answer8"
    t.integer  "answer9"
    t.integer  "answer10"
    t.integer  "answer11"
    t.integer  "answer12"
    t.integer  "answer13"
    t.integer  "answer14"
    t.integer  "answer15"
    t.integer  "answer16"
    t.integer  "answer17"
    t.integer  "answer18"
    t.integer  "answer19"
    t.integer  "answer20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "user_id"
    t.integer  "quantity"
    t.datetime "purchased_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "notification_params"
    t.string   "status"
    t.string   "transaction_id"
  end

  create_table "communication_activities", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "mono"
    t.text     "slow"
    t.text     "high_voice"
    t.text     "ascending"
    t.text     "terse"
    t.text     "abrupt_speed"
    t.text     "high_pitch"
    t.text     "aloof"
    t.text     "abrupt"
    t.text     "shy"
    t.text     "aggressive"
    t.text     "helpful"
    t.text     "unprepared"
    t.text     "bored"
    t.text     "content"
    t.text     "unhappy"
    t.text     "careless"
    t.text     "passive"
    t.text     "caring"
    t.text     "imaginative"
    t.text     "eager"
    t.text     "activity3_1"
    t.text     "activity3_2"
    t.text     "activity3_3"
    t.text     "activity3_4"
    t.text     "activity3_5"
    t.text     "activity3_6"
    t.text     "activity4"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "evaluation_credits", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "list_skills_1"
    t.string   "rating_1"
    t.text     "list_skills_2"
    t.string   "selected_skill"
    t.string   "rating_2"
    t.text     "support"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.date     "completion_date"
    t.string   "license"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "overall"
    t.string   "develop"
    t.text     "develop_comments"
    t.string   "use"
    t.text     "use_comments"
    t.string   "feedback"
    t.text     "feedback_comments"
    t.string   "teaching"
    t.text     "teaching_comments"
    t.text     "topics"
    t.string   "advanced"
    t.text     "advance_topics"
    t.text     "add_comments"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "overall_comments"
    t.integer  "user_id"
  end

  create_table "planning_case1s", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "experiences"
    t.text     "orientation"
    t.text     "appropriate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "planning_credits", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "acute"
    t.boolean  "IP"
    t.boolean  "private"
    t.boolean  "corporate"
    t.boolean  "nonprofit"
    t.boolean  "pediatric"
    t.boolean  "school"
    t.boolean  "SNU"
    t.boolean  "SNF"
    t.boolean  "LTC"
    t.text     "other"
    t.text     "list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "number"
    t.text     "Qtext"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "optionD"
    t.string   "optionE"
    t.string   "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_evaluation_case2s", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "rate"
    t.text     "plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teaching_activities", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "activity1"
    t.text     "activity2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

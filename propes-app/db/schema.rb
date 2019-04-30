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

ActiveRecord::Schema.define(version: 2019_04_30_003125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appraisers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "cpf"
    t.date "date_birth"
    t.string "gender"
    t.string "profession"
    t.string "address"
    t.string "city"
    t.string "neighborhood"
    t.string "state"
    t.integer "cep"
    t.integer "phone_house"
    t.integer "phone_mobile"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_appraisers_on_user_id"
  end

  create_table "athletes", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "cpf"
    t.date "date_birth"
    t.integer "age"
    t.string "gender"
    t.string "marital_status"
    t.string "literacy"
    t.string "profession"
    t.string "address"
    t.string "city"
    t.string "neighborhood"
    t.string "state"
    t.integer "cep"
    t.integer "phone_house"
    t.integer "phone_mobile"
    t.string "modality"
    t.string "position"
    t.string "msd"
    t.string "mif"
    t.string "smoker"
    t.string "ethnicity"
    t.string "has"
    t.string "diabetes"
    t.string "cardio_disease"
    t.string "practice_exercises"
    t.string "family_ethnicity"
    t.string "family_has"
    t.string "family_diabetes"
    t.string "family_cardio"
    t.string "others"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_athletes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "cpf"
  end

  add_foreign_key "appraisers", "users"
  add_foreign_key "athletes", "users"
end

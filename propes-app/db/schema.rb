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

ActiveRecord::Schema.define(version: 2019_05_01_031430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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
    t.integer "home_phone"
    t.integer "cell_phone"
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
    t.string "civil_status"
    t.string "degree_education"
    t.string "profession"
    t.string "address"
    t.string "city"
    t.string "neighborhood"
    t.string "state"
    t.integer "cep"
    t.integer "home_phone"
    t.integer "cell_phone"
    t.string "modality"
    t.string "position"
    t.string "dum"
    t.string "dlm"
    t.string "smoker"
    t.string "alcoholism"
    t.string "sah"
    t.string "diabetes"
    t.string "cardio_deseases"
    t.string "exercise_practice"
    t.string "fami_alcoholism"
    t.string "fami_sah"
    t.string "fami_diabetes"
    t.string "fami_cardio"
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
    t.binary "avatar"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appraisers", "users"
  add_foreign_key "athletes", "users"
end

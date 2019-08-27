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

ActiveRecord::Schema.define(version: 2019_06_19_011426) do

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

  create_table "anamneses", force: :cascade do |t|
    t.string "main_complaint"
    t.string "history_complaint"
    t.string "nature_complaint"
    t.string "history_injuries"
    t.boolean "is_accompanying"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ankle_mobilities", force: :cascade do |t|
    t.decimal "right_ankle"
    t.decimal "left_ankle"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "athletes", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
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
    t.string "cep"
    t.string "home_phone"
    t.string "cell_phone"
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
    t.binary "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bridge_extensions", force: :cascade do |t|
    t.string "right_side"
    t.string "left_side"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coopers", force: :cascade do |t|
    t.decimal "distance"
    t.decimal "result"
    t.string "qualitative_result"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cutaneous_folds", force: :cascade do |t|
    t.decimal "tricipital"
    t.decimal "subescapular"
    t.decimal "average_axilar"
    t.decimal "breastplate"
    t.decimal "supra_ilcia"
    t.decimal "abdomen"
    t.decimal "thigh"
    t.decimal "result"
    t.decimal "bone_mass_BE"
    t.decimal "bone_mass_BU"
    t.decimal "bone_mass_BF"
    t.decimal "bone_mass_BM"
    t.decimal "bm_Result"
    t.decimal "residual_mass"
    t.decimal "fat_mass"
    t.decimal "muscle_mass"
    t.decimal "lean_mass"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dynometries", force: :cascade do |t|
    t.decimal "peak_extension_right"
    t.decimal "peak_extension_left"
    t.decimal "peak_extension_deficit"
    t.decimal "peak_flexion_right"
    t.decimal "peak_flexion_left"
    t.decimal "peak_flexion_deficit"
    t.decimal "power_extension_right_180"
    t.decimal "power_extension_left_180"
    t.decimal "power_extension_deficit_180"
    t.decimal "power_flexion_right_180"
    t.decimal "power_flexion_left_180"
    t.decimal "power_flexion_deficit_180"
    t.decimal "power_extension_right_300"
    t.decimal "power_extension_left_300"
    t.decimal "power_extension_deficit_300"
    t.decimal "power_flexion_right_300"
    t.decimal "power_flexion_left_300"
    t.decimal "power_flexion_deficit_300"
    t.decimal "job_extension_right_180"
    t.decimal "job_extension_left_180"
    t.decimal "job_extension_deficit_180"
    t.decimal "job_flexion_right_180"
    t.decimal "job_flexion_left_180"
    t.decimal "job_flexion_deficit_180"
    t.decimal "job_extension_right_300"
    t.decimal "job_extension_left_300"
    t.decimal "job_extension_deficit_300"
    t.decimal "job_flexion_right_300"
    t.decimal "job_flexion_left_300"
    t.decimal "job_flexion_deficit_300"
    t.decimal "fatigue_extension_right_300"
    t.decimal "fatigue_extension_left_300"
    t.decimal "fatigue_extension_deficit_300"
    t.decimal "fatigue_flexion_right_300"
    t.decimal "fatigue_flexion_left_300"
    t.decimal "fatigue_flexion_deficit_300"
    t.decimal "IDM_extension"
    t.decimal "IDM_flexion"
    t.decimal "relation_extension_right"
    t.decimal "relation_extension_left"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impulsions", force: :cascade do |t|
    t.decimal "distance"
    t.decimal "result"
    t.string "qualitative_result"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perimetries", force: :cascade do |t|
    t.decimal "left_arm_relaxed"
    t.decimal "right_arm_relaxed"
    t.decimal "left_contracted_arm"
    t.decimal "right_contracted_arm"
    t.decimal "chest"
    t.decimal "abdomen"
    t.decimal "left_proximal_thigh"
    t.decimal "right_proximal_thigh"
    t.decimal "left_middle_thigh"
    t.decimal "right_middle_thigh"
    t.decimal "left_distal_thigh"
    t.decimal "right_distal_thigh"
    t.decimal "left_leg"
    t.decimal "right_leg"
    t.decimal "waist"
    t.decimal "hip"
    t.decimal "result"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questionaries", force: :cascade do |t|
    t.decimal "question1a"
    t.decimal "question1b"
    t.decimal "question2a"
    t.decimal "question2b"
    t.decimal "question3a"
    t.decimal "question3b"
    t.string "question4a"
    t.string "question4b"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "step_down_tests", force: :cascade do |t|
    t.decimal "right_MMSS"
    t.decimal "right_moviment"
    t.decimal "right_pelvis_plane"
    t.decimal "right_knee_position"
    t.decimal "right_valg"
    t.decimal "right_posture"
    t.string "right_result"
    t.decimal "left_MMSS"
    t.decimal "left_moviment"
    t.decimal "left_pelvis_plane"
    t.decimal "left_knee_position"
    t.decimal "left_valg"
    t.decimal "left_posture"
    t.string "left_result"
    t.string "right_qualitative_result"
    t.string "left_qualitative_result"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tegner_lysholms", force: :cascade do |t|
    t.decimal "instability"
    t.decimal "pain"
    t.decimal "swelling"
    t.decimal "climb_stairs"
    t.decimal "squat"
    t.decimal "locking"
    t.decimal "limp"
    t.decimal "support"
    t.decimal "result"
    t.string "qualitative_result"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "cpf"
    t.string "date_birth"
    t.string "gender"
    t.string "profession"
    t.string "address"
    t.string "city"
    t.string "neighborhood"
    t.string "state"
    t.string "cep"
    t.string "home_phone"
    t.string "cell_phone"
    t.boolean "approved"
    t.binary "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
  end

  create_table "y_tests", force: :cascade do |t|
    t.decimal "right_PA"
    t.decimal "right_PM"
    t.decimal "right_PL"
    t.decimal "right_CM"
    t.decimal "right_result"
    t.decimal "left_PA"
    t.decimal "left_PM"
    t.decimal "left_PL"
    t.decimal "left_CM"
    t.decimal "left_result"
    t.string "right_qualitative_result"
    t.string "left_qualitative_result"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yo_yos", force: :cascade do |t|
    t.decimal "distance"
    t.decimal "result"
    t.string "qualitative_result"
    t.bigint "user_id"
    t.bigint "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end

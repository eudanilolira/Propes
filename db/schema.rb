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

ActiveRecord::Schema.define(version: 2019_05_24_023812) do

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
  end

  create_table "ankle_mobilities", force: :cascade do |t|
    t.string "right_ankle"
    t.string "left_ankle"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_ankle_mobilities_on_athletes_id"
    t.index ["user_id"], name: "index_ankle_mobilities_on_user_id"
  end

  create_table "athletes", force: :cascade do |t|
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
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.binary "avatar"
    t.index ["user_id"], name: "index_athletes_on_user_id"
  end

  create_table "bridge_extensions", force: :cascade do |t|
    t.string "right_side"
    t.string "left_side"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_bridge_extensions_on_athletes_id"
    t.index ["user_id"], name: "index_bridge_extensions_on_user_id"
  end

  create_table "coopers", force: :cascade do |t|
    t.string "distance"
    t.string "aerobic_capacity"
    t.string "v2max"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_coopers_on_athletes_id"
    t.index ["user_id"], name: "index_coopers_on_user_id"
  end

  create_table "cutaneous_folds", force: :cascade do |t|
    t.string "tricipital"
    t.string "subescapular"
    t.string "average_axilar"
    t.string "breastplate"
    t.string "supra_ilcia"
    t.string "abdomen"
    t.string "thigh"
    t.string "result"
    t.string "bone_mass_BE"
    t.string "bone_mass_BU"
    t.string "bone_mass_BF"
    t.string "bone_mass_BM"
    t.string "bm_Result"
    t.string "residual_mass"
    t.string "fat_mass"
    t.string "muscle_mass"
    t.string "lean_mass"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_cutaneous_folds_on_athletes_id"
    t.index ["user_id"], name: "index_cutaneous_folds_on_user_id"
  end

  create_table "dynometries", force: :cascade do |t|
    t.string "peak_extension_right"
    t.string "peak_extension_left"
    t.string "peak_extension_deficit"
    t.string "peak_flexion_right"
    t.string "peak_flexion_left"
    t.string "peak_flexion_deficit"
    t.string "power_extension_right_180"
    t.string "power_extension_left_180"
    t.string "power_extesion_deficit_180"
    t.string "power_flexion_right_180"
    t.string "power_flexion_left_180"
    t.string "power_flexion_deficit_180"
    t.string "power_extension_right_300"
    t.string "power_extension_left_300"
    t.string "power_extesion_deficit_300"
    t.string "power_flexion_right_300"
    t.string "power_flexion_left_300"
    t.string "power_flexion_deficit_300"
    t.string "job_extension_right_180"
    t.string "job_extension_left_180"
    t.string "job_extesion_deficit_180"
    t.string "job_flexion_right_180"
    t.string "job_flexion_left_180"
    t.string "job_flexion_deficit_180"
    t.string "job_extension_right_300"
    t.string "job_extension_left_300"
    t.string "job_extesion_deficit_300"
    t.string "job_flexion_right_300"
    t.string "job_flexion_left_300"
    t.string "job_flexion_deficit_300"
    t.string "fatigue_extension_right_300"
    t.string "fatigue_extension_left_300"
    t.string "fatigue_extesion_deficit_300"
    t.string "fatigue_flexion_right_300"
    t.string "fatigue_flexion_left_300"
    t.string "fatigue_flexion_deficit_300"
    t.string "IDM_extension"
    t.string "IDM_flexion"
    t.string "relation_extension_right"
    t.string "relation_extension_left"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_dynometries_on_athletes_id"
    t.index ["user_id"], name: "index_dynometries_on_user_id"
  end

  create_table "functional_tests", force: :cascade do |t|
    t.string "right_PA"
    t.string "right_PM"
    t.string "right_PL"
    t.string "right_CM"
    t.string "left_PA"
    t.string "left_PM"
    t.string "left_PL"
    t.string "left_CM"
    t.string "right_MMSS"
    t.string "right_moviment"
    t.string "right_pelvis_plane"
    t.string "right_knee_position"
    t.string "right_valg"
    t.string "rightt_posture"
    t.string "left_MMSS"
    t.string "left_moviment"
    t.string "left_pelvis_plane"
    t.string "left_knee_position"
    t.string "left_valg"
    t.string "left_posture"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_functional_tests_on_athletes_id"
    t.index ["user_id"], name: "index_functional_tests_on_user_id"
  end

  create_table "impulsions", force: :cascade do |t|
    t.string "distance"
    t.string "P"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_impulsions_on_athletes_id"
    t.index ["user_id"], name: "index_impulsions_on_user_id"
  end

  create_table "perimetries", force: :cascade do |t|
    t.string "left_arm_relaxed"
    t.string "right_arm_relaxed"
    t.string "left_contracted_arm"
    t.string "right_contracted_arm"
    t.string "chest"
    t.string "abdomen"
    t.string "left_proximal_thigh"
    t.string "right_proximal_thigh"
    t.string "left_middle_thigh"
    t.string "right_middle_thigh"
    t.string "left_distal_thigh"
    t.string "right_distal_thigh"
    t.string "left_leg"
    t.string "right_leg"
    t.string "waist"
    t.string "hip"
    t.string "result"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_perimetries_on_athletes_id"
    t.index ["user_id"], name: "index_perimetries_on_user_id"
  end

  create_table "physicals", force: :cascade do |t|
    t.string "blood_pressure"
    t.string "respiratory_frequency"
    t.string "heart_rate"
    t.string "SpO2"
    t.string "weight"
    t.string "height"
    t.string "imc"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_physicals_on_athletes_id"
    t.index ["user_id"], name: "index_physicals_on_user_id"
  end

  create_table "questionaries", force: :cascade do |t|
    t.integer "question1a"
    t.integer "question1b"
    t.integer "question2a"
    t.integer "question2b"
    t.integer "question3a"
    t.integer "question3b"
    t.string "question4a"
    t.string "question4b"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_questionaries_on_athletes_id"
    t.index ["user_id"], name: "index_questionaries_on_user_id"
  end

  create_table "tegner_lysholms", force: :cascade do |t|
    t.string "instability"
    t.string "pain"
    t.string "swelling"
    t.string "climb_stairs"
    t.string "squat"
    t.string "locking"
    t.string "limp"
    t.string "support"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_tegner_lysholms_on_athletes_id"
    t.index ["user_id"], name: "index_tegner_lysholms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.binary "avatar"
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
  end

  create_table "yo_yos", force: :cascade do |t|
    t.string "distance"
    t.string "v2max"
    t.datetime "created_at", null: false
    t.bigint "user_id"
    t.bigint "athletes_id"
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_yo_yos_on_athletes_id"
    t.index ["user_id"], name: "index_yo_yos_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "ankle_mobilities", "athletes", column: "athletes_id"
  add_foreign_key "ankle_mobilities", "users"
  add_foreign_key "athletes", "users"
  add_foreign_key "bridge_extensions", "athletes", column: "athletes_id"
  add_foreign_key "bridge_extensions", "users"
  add_foreign_key "coopers", "athletes", column: "athletes_id"
  add_foreign_key "coopers", "users"
  add_foreign_key "cutaneous_folds", "athletes", column: "athletes_id"
  add_foreign_key "cutaneous_folds", "users"
  add_foreign_key "dynometries", "athletes", column: "athletes_id"
  add_foreign_key "dynometries", "users"
  add_foreign_key "functional_tests", "athletes", column: "athletes_id"
  add_foreign_key "functional_tests", "users"
  add_foreign_key "impulsions", "athletes", column: "athletes_id"
  add_foreign_key "impulsions", "users"
  add_foreign_key "perimetries", "athletes", column: "athletes_id"
  add_foreign_key "perimetries", "users"
  add_foreign_key "physicals", "athletes", column: "athletes_id"
  add_foreign_key "physicals", "users"
  add_foreign_key "questionaries", "athletes", column: "athletes_id"
  add_foreign_key "questionaries", "users"
  add_foreign_key "tegner_lysholms", "athletes", column: "athletes_id"
  add_foreign_key "tegner_lysholms", "users"
  add_foreign_key "yo_yos", "athletes", column: "athletes_id"
  add_foreign_key "yo_yos", "users"
end

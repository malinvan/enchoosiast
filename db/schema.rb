# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_28_132324) do

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

  create_table "answers", force: :cascade do |t|
    t.boolean "value"
    t.bigint "user_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "career_traits", force: :cascade do |t|
    t.bigint "career_id", null: false
    t.bigint "trait_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["career_id"], name: "index_career_traits_on_career_id"
    t.index ["trait_id"], name: "index_career_traits_on_trait_id"
  end

  create_table "careers", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.text "detailed_description"
    t.string "social_interaction"
    t.integer "salary"
    t.string "entry_barriers"
    t.string "remote_flexibility"
    t.string "international_flexibility"
    t.string "working_hour_flexibility"
    t.text "next_steps"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "career_id"
    t.index ["career_id"], name: "index_lists_on_career_id"
    t.index ["user_id"], name: "index_lists_on_user_id"

  create_table "likes", id: :serial, force: :cascade do |t|
    t.string "likee_type"
    t.integer "likee_id"
    t.string "liker_type"
    t.integer "liker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["likee_id", "likee_type", "liker_id", "liker_type"], name: "likes_likee_liker_idx", unique: true
    t.index ["likee_id", "likee_type"], name: "likes_likee_idx"
    t.index ["likee_type", "likee_id"], name: "index_likes_on_likee_type_and_likee_id"
    t.index ["liker_id", "liker_type"], name: "likes_liker_idx"
    t.index ["liker_type", "liker_id"], name: "index_likes_on_liker_type_and_liker_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "todos", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "completed"
    t.bigint "list_id"
    t.string "category"
    t.index ["list_id"], name: "index_todos_on_list_id"
  end

  create_table "trait_questions", force: :cascade do |t|
    t.string "answer_value"
    t.bigint "question_id", null: false
    t.bigint "trait_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_trait_questions_on_question_id"
    t.index ["trait_id"], name: "index_trait_questions_on_trait_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_traits", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "trait_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trait_id"], name: "index_user_traits_on_trait_id"
    t.index ["user_id"], name: "index_user_traits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "career_id"
    t.index ["career_id"], name: "index_users_on_career_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "career_traits", "careers"
  add_foreign_key "career_traits", "traits"
  add_foreign_key "lists", "users"
  add_foreign_key "trait_questions", "questions"
  add_foreign_key "trait_questions", "traits"
  add_foreign_key "user_traits", "traits"
  add_foreign_key "user_traits", "users"
  add_foreign_key "users", "careers"
end

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

ActiveRecord::Schema.define(version: 2019_08_05_102814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "level_id"
    t.index ["level_id"], name: "index_courses_on_level_id"
    t.index ["student_id"], name: "index_courses_on_student_id"
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.string "material"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.index ["course_id"], name: "index_lessons_on_course_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_parents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_parents_on_reset_password_token", unique: true
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "parent_id"
    t.index ["course_id"], name: "index_students_on_course_id"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["parent_id"], name: "index_students_on_parent_id"
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "photo"
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
  end

  add_foreign_key "courses", "levels"
  add_foreign_key "courses", "students"
  add_foreign_key "courses", "teachers"
  add_foreign_key "lessons", "courses"
  add_foreign_key "students", "courses"
  add_foreign_key "students", "parents"
end

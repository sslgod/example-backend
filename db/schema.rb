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

ActiveRecord::Schema.define(version: 2020_07_04_061921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.text "description"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "segments", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id"
    t.bigint "subproject_id"
    t.datetime "started_date"
    t.datetime "due_date"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_segments_on_project_id"
    t.index ["subproject_id"], name: "index_segments_on_subproject_id"
  end

  create_table "stages", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "started_at", null: false
    t.bigint "parent_id"
    t.bigint "project_id"
    t.boolean "is_done", default: false, null: false
    t.text "description", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent_id"], name: "index_stages_on_parent_id"
    t.index ["project_id"], name: "index_stages_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "projects", "users"
end

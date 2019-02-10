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

ActiveRecord::Schema.define(version: 2019_02_10_201752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "attendances", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.integer "manager_id"
    t.date "date", null: false
    t.string "reason"
    t.string "status"
    t.string "logged_via"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "leave", default: false
    t.datetime "check_in_time"
    t.datetime "check_out_time"
    t.index ["employee_id"], name: "index_attendances_on_employee_id"
  end

  create_table "break_times", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_details", force: :cascade do |t|
    t.string "education"
    t.string "experience"
    t.string "summary"
    t.string "the_most_amazing"
    t.string "preferred_development_environment"
    t.string "calling_name"
    t.string "alternate_email"
    t.string "seat_location"
    t.string "theme"
    t.string "address"
    t.string "phone"
    t.string "skype"
    t.string "cnic"
    t.string "blood_group"
    t.string "employment_status", default: "active"
    t.date "appointment_date"
    t.date "date_of_birth"
    t.integer "job_title_id"
    t.integer "employee_id", null: false
    t.integer "domain_team_id"
    t.integer "department_id"
    t.integer "primary_role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "picture"
    t.string "time_zone"
    t.boolean "profile_complete"
    t.datetime "remember_created_at"
    t.string "remember_token"
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.string "refresh_token"
    t.boolean "oauth_expires"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.datetime "check_in_time"
    t.index ["email"], name: "index_employees_on_email", unique: true
  end

  create_table "jwt_blacklist", force: :cascade do |t|
    t.string "jti", null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

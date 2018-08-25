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

ActiveRecord::Schema.define(version: 20180627171048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assistances", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
    t.integer  "shop_id"
    t.datetime "checkin"
    t.index ["employee_id"], name: "index_assistances_on_employee_id", using: :btree
    t.index ["shop_id"], name: "index_assistances_on_shop_id", using: :btree
  end

  create_table "busquedas", force: :cascade do |t|
    t.string   "acreedor"
    t.string   "id_acreedor"
    t.string   "id_empleado"
    t.date     "date_from"
    t.date     "date_to"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employee_types", force: :cascade do |t|
    t.string   "names"
    t.float    "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "names"
    t.string   "telephone"
    t.string   "address"
    t.date     "employent_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "employee_type_id"
    t.index ["employee_type_id"], name: "index_employees_on_employee_type_id", using: :btree
  end

  create_table "filtros", force: :cascade do |t|
    t.string   "acreedor"
    t.string   "id_acreedor"
    t.string   "id_empleado"
    t.date     "fecha"
    t.date     "fecha2"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "cheque"
  end

  create_table "models", force: :cascade do |t|
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
    t.index ["email"], name: "index_models_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree
  end

  create_table "nominas", force: :cascade do |t|
    t.string   "acreedor"
    t.string   "n1"
    t.string   "n2"
    t.string   "nombre"
    t.string   "apellido"
    t.date     "fecha"
    t.decimal  "pago"
    t.string   "id_acreedor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "cheque"
  end

  create_table "reportes", force: :cascade do |t|
    t.string   "acreedor"
    t.string   "id_acreedor"
    t.date     "fecha"
    t.decimal  "pago"
    t.decimal  "pago1"
    t.decimal  "total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "names"
    t.string   "address"
    t.string   "phone"
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "assistances", "employees"
  add_foreign_key "assistances", "shops"
  add_foreign_key "employees", "employee_types"
end

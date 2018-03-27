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

ActiveRecord::Schema.define(version: 20180327015728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "busquedas", force: :cascade do |t|
    t.string   "acreedor"
    t.string   "id_acreedor"
    t.string   "id_empleado"
    t.date     "date_from"
    t.date     "date_to"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "filtros", force: :cascade do |t|
    t.string   "acreedor"
    t.string   "id_acreedor"
    t.string   "id_empleado"
    t.date     "fecha"
    t.date     "fecha2"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

end

# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151126154237) do

  create_table "locations", force: :cascade do |t|
    t.decimal  "lat",        precision: 8, scale: 5
    t.decimal  "lng",        precision: 8, scale: 5
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "point_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "points", force: :cascade do |t|
    t.integer  "point_type_id"
    t.integer  "position"
    t.boolean  "hidden_from_map",  default: false
    t.boolean  "hidden_from_list", default: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "points", ["point_type_id"], name: "index_points_on_point_type_id"

  create_table "routes", force: :cascade do |t|
    t.string   "number"
    t.string   "name"
    t.boolean  "circulator", default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "routes", ["number"], name: "index_routes_on_number", unique: true

  create_table "trips", force: :cascade do |t|
    t.string   "name"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "trips", ["route_id"], name: "index_trips_on_route_id"

end

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

ActiveRecord::Schema.define(version: 20141211181629) do

  create_table "providers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.string   "organization"
    t.string   "address"
    t.string   "phone_number"
    t.string   "waiting_period"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "ratings", force: true do |t|
    t.integer  "user_id"
    t.integer  "provider_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

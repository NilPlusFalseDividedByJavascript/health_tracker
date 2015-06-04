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

ActiveRecord::Schema.define(version: 20150604174140) do

  create_table "consumed_cals", force: :cascade do |t|
    t.integer  "cal_consume"
    t.date     "consume_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "excercises", force: :cascade do |t|
    t.integer  "cal_burn"
    t.date     "burn_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.integer  "steps_taken"
    t.date     "step_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "weights", force: :cascade do |t|
    t.integer  "lbs"
    t.date     "weigh_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

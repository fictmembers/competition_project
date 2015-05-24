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

ActiveRecord::Schema.define(version: 20150523120834) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "manager"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true
  add_index "companies", ["remember_token"], name: "index_companies_on_remember_token"

  create_table "promocodes", force: true do |t|
    t.string   "text"
    t.string   "recipient"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "task"
    t.string   "mailed_to"
  end

  add_index "promocodes", ["task"], name: "index_promocodes_on_task", unique: true

  create_table "tests", force: true do |t|
    t.string   "question"
    t.string   "answer1"
    t.string   "answer2"
    t.string   "answer3"
    t.string   "answer4"
    t.string   "right_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end

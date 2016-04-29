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

ActiveRecord::Schema.define(version: 20160412163040) do

  create_table "open_topics", force: :cascade do |t|
    t.boolean  "shortlist"
    t.integer  "number"
    t.text     "summary"
    t.text     "description"
    t.text     "option"
    t.string   "component"
    t.string   "category"
    t.string   "prio"
    t.string   "responsible"
    t.string   "state"
    t.string   "costmodel"
    t.string   "affects_version"
    t.string   "issue_ticket"
    t.text     "ticket_text"
    t.text     "notes"
    t.string   "in_sprint"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end

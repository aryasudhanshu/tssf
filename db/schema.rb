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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120301214318) do

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "content"
    t.string   "page_title"
    t.boolean  "published"
  end

  add_index "pages", ["slug"], :name => "index_pages_on_slug", :unique => true

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "meta_keyword"
    t.string   "meta_description"
    t.string   "overview"
    t.string   "description"
    t.string   "fee_and_dates"
    t.string   "location_and_accomodation"
    t.string   "snapshot"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.boolean  "skilled"
    t.string   "slug"
    t.string   "page_title"
    t.boolean  "published"
  end

  add_index "projects", ["slug"], :name => "index_projects_on_slug", :unique => true

end

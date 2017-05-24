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

ActiveRecord::Schema.define(version: 20170524061724) do

  create_table "feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC" do |t|
    t.date "feedbacked_at"
    t.integer "row", null: false
    t.string "age"
    t.string "region"
    t.string "case1"
    t.string "case1_spot"
    t.string "case2"
    t.string "case2_spot"
    t.string "case3"
    t.string "case3_spot"
    t.string "case4"
    t.string "case4_spot"
    t.string "case5"
    t.string "case5_spot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["row"], name: "index_feedbacks_on_row"
  end

end

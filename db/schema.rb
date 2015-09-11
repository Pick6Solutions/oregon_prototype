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

ActiveRecord::Schema.define(version: 20150911030704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coupons", force: true do |t|
    t.string   "name"
    t.integer  "points"
    t.integer  "number_available"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
    t.string   "pdf_url"
    t.boolean  "single_use",       default: false
  end

  create_table "redeemed_coupons", force: true do |t|
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unique_id"
    t.string   "coupon_name"
    t.string   "user_name"
    t.integer  "coupon_id"
    t.boolean  "is_redeemed",        default: false
    t.string   "html_file"
    t.string   "pdf_file"
    t.string   "redeemable_pdf_url"
  end

  add_index "redeemed_coupons", ["coupon_id"], name: "index_redeemed_coupons_on_coupon_id", using: :btree

end

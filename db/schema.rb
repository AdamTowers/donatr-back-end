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

ActiveRecord::Schema.define(version: 20180606144016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "donations", force: :cascade do |t|
    t.bigint "donor_id"
    t.bigint "fund_id"
    t.integer "amount"
    t.index ["donor_id"], name: "index_donations_on_donor_id"
    t.index ["fund_id"], name: "index_donations_on_fund_id"
  end

  create_table "donors", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "funds", force: :cascade do |t|
    t.bigint "organization_id"
    t.string "title"
    t.string "description"
    t.integer "goal"
    t.integer "raised", default: 0
    t.index ["organization_id"], name: "index_funds_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "donations", "donors"
  add_foreign_key "donations", "funds"
  add_foreign_key "funds", "organizations"
end

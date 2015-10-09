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

ActiveRecord::Schema.define(version: 20150915035541) do

  create_table "accounting_reports", force: :cascade do |t|
    t.integer  "committee_id"
    t.string   "type"
    t.date     "period_start"
    t.date     "period_end"
    t.boolean  "ammendment"
    t.decimal  "cash_year_start"
    t.decimal  "cash_period_start"
    t.decimal  "contributions_itemized"
    t.decimal  "contributions_itemized_ytd"
    t.decimal  "contributions_unitemized"
    t.decimal  "contributions_unitemized_ytd"
    t.decimal  "expenditures_itemized"
    t.decimal  "expenditures_unitemized"
    t.decimal  "expenditures_itemized_ytd"
    t.decimal  "expenditures_unitemized_ytd"
    t.decimal  "debts_owed_to"
    t.decimal  "debts_owed_by"
    t.date     "signed_at"
    t.string   "source_url"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "accounting_reports", ["committee_id"], name: "index_accounting_reports_on_committee_id"

  create_table "accounting_transactions", force: :cascade do |t|
    t.integer  "counterparty_id"
    t.date     "date"
    t.decimal  "amount"
    t.decimal  "amount_ytd"
    t.string   "type"
    t.string   "nature"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "accounting_transactions", ["counterparty_id"], name: "index_accounting_transactions_on_counterparty_id"

  create_table "candidates", force: :cascade do |t|
    t.string   "name"
    t.string   "party"
    t.string   "office"
    t.string   "county"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "committees", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "phone"
    t.string   "address"
    t.string   "zip"
    t.string   "city"
    t.string   "state"
    t.string   "party"
    t.integer  "candidate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "committees", ["candidate_id"], name: "index_committees_on_candidate_id"

  create_table "counterparies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "occupation"
    t.string   "office"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

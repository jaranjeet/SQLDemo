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

ActiveRecord::Schema.define(version: 2018_11_13_092030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "account_number"
    t.float "balance"
    t.bigint "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_accounts_on_branch_id"
  end

  create_table "borrowers", force: :cascade do |t|
    t.bigint "loan_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_borrowers_on_customer_id"
    t.index ["loan_id"], name: "index_borrowers_on_loan_id"
  end

  create_table "branches", force: :cascade do |t|
    t.string "branch_name"
    t.string "branch_city"
    t.integer "assets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "customer_street"
    t.string "customer_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "depositors", force: :cascade do |t|
    t.bigint "account_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_depositors_on_account_id"
    t.index ["customer_id"], name: "index_depositors_on_customer_id"
  end

  create_table "loans", force: :cascade do |t|
    t.integer "loan_number"
    t.float "amount"
    t.bigint "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_loans_on_branch_id"
  end

end

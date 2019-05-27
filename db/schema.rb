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

ActiveRecord::Schema.define(version: 2019_05_26_191125) do

  create_table "abyences", force: :cascade do |t|
    t.integer "Client_id"
    t.integer "insurer_id"
    t.date "reminder_date"
    t.text "reminder_content"
    t.date "renewal_date"
    t.integer "underwriter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_abyences_on_Client_id"
    t.index ["insurer_id"], name: "index_abyences_on_insurer_id"
    t.index ["underwriter_id"], name: "index_abyences_on_underwriter_id"
  end

  create_table "client_policies", force: :cascade do |t|
    t.integer "client_name_id"
    t.integer "coverage_type_id"
    t.integer "insurer_id"
    t.boolean "loss_runs_reqd"
    t.date "renewal_date"
    t.integer "underwriter_id"
    t.boolean "quote_recieved"
    t.date "quote_recieved_date"
    t.boolean "did_client_confirmed"
    t.boolean "did_confirm_to_underwriter"
    t.boolean "did_underwriter_confirm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_name_id"], name: "index_client_policies_on_client_name_id"
    t.index ["coverage_type_id"], name: "index_client_policies_on_coverage_type_id"
    t.index ["insurer_id"], name: "index_client_policies_on_insurer_id"
    t.index ["underwriter_id"], name: "index_client_policies_on_underwriter_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_clients_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coverages", force: :cascade do |t|
    t.string "coverage_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "underwriters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_underwriters_on_company_id"
  end

end

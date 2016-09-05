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

ActiveRecord::Schema.define(version: 20160905115049) do

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "zip_code"
    t.string   "city_name"
    t.string   "country_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "kvk_number"
    t.string   "btw_number"
    t.string   "iban_number"
    t.string   "bic_number"
    t.string   "bank_holder_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "invoice_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "company_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "send_to_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "zip_code"
    t.string   "country_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "kvk_number"
    t.string   "btw_number"
    t.string   "iban_number"
    t.string   "bic_number"
    t.string   "bank_holder_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "number"
    t.string   "currency"
    t.date     "date"
    t.date     "duedate"
    t.decimal  "btwtotal",   precision: 20, scale: 2
    t.decimal  "subtotal",   precision: 20, scale: 2
    t.decimal  "total",      precision: 20, scale: 2
    t.text     "footer"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "quantity"
    t.text     "description"
    t.decimal  "unitprice",   precision: 11, scale: 2
    t.decimal  "total",       precision: 11, scale: 2
    t.decimal  "btw",         precision: 3,  scale: 2
    t.decimal  "discount",    precision: 3,  scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "invoice_id"
  end

end

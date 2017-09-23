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

ActiveRecord::Schema.define(version: 20170920054843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_vehicles", force: :cascade do |t|
    t.bigint "tenant_id"
    t.bigint "customer_id"
    t.string "vehicle_name"
    t.string "brand"
    t.string "model"
    t.string "registration_number"
    t.string "vin_or_chassis_number"
    t.integer "year_of_manufacture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_vehicles_on_customer_id"
    t.index ["tenant_id"], name: "index_customer_vehicles_on_tenant_id"
  end

  create_table "customers", force: :cascade do |t|
    t.bigint "tenant_id"
    t.string "customername"
    t.string "gst_number"
    t.string "email_id"
    t.string "contact_number"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_customers_on_address_id"
    t.index ["tenant_id"], name: "index_customers_on_tenant_id"
  end

  create_table "job_cards", force: :cascade do |t|
    t.string "job_card_number"
    t.bigint "tenant_id"
    t.bigint "customer_id"
    t.bigint "customer_vehicle_id"
    t.string "handover_person"
    t.string "contact_number"
    t.boolean "existing_vehicle_status"
    t.boolean "approval_status"
    t.integer "jobcard_status"
    t.float "fuel_level"
    t.integer "km_traveled"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_job_cards_on_customer_id"
    t.index ["customer_vehicle_id"], name: "index_job_cards_on_customer_vehicle_id"
    t.index ["tenant_id"], name: "index_job_cards_on_tenant_id"
    t.index ["user_id"], name: "index_job_cards_on_user_id"
  end

  create_table "particulars", force: :cascade do |t|
    t.bigint "tenant_id"
    t.bigint "job_card_id"
    t.bigint "user_id"
    t.string "particular_short_note"
    t.string "description"
    t.boolean "completed_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_card_id"], name: "index_particulars_on_job_card_id"
    t.index ["tenant_id"], name: "index_particulars_on_tenant_id"
    t.index ["user_id"], name: "index_particulars_on_user_id"
  end

  create_table "purchase_logs", force: :cascade do |t|
    t.bigint "spare_id"
    t.bigint "user_id"
    t.float "cost_per_unit"
    t.integer "quantity"
    t.float "total_cost"
    t.string "purchased_from"
    t.float "sgst"
    t.float "cgst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spare_id"], name: "index_purchase_logs_on_spare_id"
    t.index ["user_id"], name: "index_purchase_logs_on_user_id"
  end

  create_table "service_bills", force: :cascade do |t|
    t.bigint "job_card_id"
    t.bigint "particular_id"
    t.string "service_name"
    t.string "description"
    t.bigint "user_id"
    t.float "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_card_id"], name: "index_service_bills_on_job_card_id"
    t.index ["particular_id"], name: "index_service_bills_on_particular_id"
    t.index ["user_id"], name: "index_service_bills_on_user_id"
  end

  create_table "spare_bills", force: :cascade do |t|
    t.bigint "job_card_id"
    t.bigint "spare_id"
    t.float "cost_per_unit"
    t.string "quantity"
    t.float "sgst"
    t.float "cgst"
    t.float "sub_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_card_id"], name: "index_spare_bills_on_job_card_id"
    t.index ["spare_id"], name: "index_spare_bills_on_spare_id"
  end

  create_table "spare_prices", force: :cascade do |t|
    t.bigint "spare_id"
    t.float "actual_price_per_unit"
    t.float "sales_price_per_unit"
    t.float "sgst"
    t.float "cgst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spare_id"], name: "index_spare_prices_on_spare_id"
  end

  create_table "spares", force: :cascade do |t|
    t.bigint "unit_id"
    t.bigint "spares_category_id"
    t.string "part_number"
    t.string "item_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spares_category_id"], name: "index_spares_on_spares_category_id"
    t.index ["unit_id"], name: "index_spares_on_unit_id"
  end

  create_table "spares_categories", force: :cascade do |t|
    t.string "category_name"
    t.string "category_code"
    t.string "hsnc_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spares_inventories", force: :cascade do |t|
    t.bigint "spare_id"
    t.string "available_quantity"
    t.string "alert_minimum_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spare_id"], name: "index_spares_inventories_on_spare_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.string "tenant_login_name"
    t.string "display_name"
    t.boolean "subscription_status"
    t.string "logo"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_tenants_on_address_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "unit_short_code"
    t.string "unit_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.bigint "tenant_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "username"
    t.string "password_hash"
    t.string "password_salt"
    t.string "mobile_number"
    t.string "password_confirmation"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_users_on_address_id"
    t.index ["tenant_id"], name: "index_users_on_tenant_id"
  end

  add_foreign_key "customer_vehicles", "customers"
  add_foreign_key "customer_vehicles", "tenants"
  add_foreign_key "customers", "addresses"
  add_foreign_key "customers", "tenants"
  add_foreign_key "job_cards", "customer_vehicles"
  add_foreign_key "job_cards", "customers"
  add_foreign_key "job_cards", "tenants"
  add_foreign_key "job_cards", "users"
  add_foreign_key "particulars", "job_cards"
  add_foreign_key "particulars", "tenants"
  add_foreign_key "particulars", "users"
  add_foreign_key "purchase_logs", "spares"
  add_foreign_key "purchase_logs", "users"
  add_foreign_key "service_bills", "job_cards"
  add_foreign_key "service_bills", "particulars"
  add_foreign_key "service_bills", "users"
  add_foreign_key "spare_bills", "job_cards"
  add_foreign_key "spare_bills", "spares"
  add_foreign_key "spare_prices", "spares"
  add_foreign_key "spares", "spares_categories"
  add_foreign_key "spares", "units"
  add_foreign_key "spares_inventories", "spares"
  add_foreign_key "tenants", "addresses"
  add_foreign_key "users", "addresses"
  add_foreign_key "users", "tenants"
end

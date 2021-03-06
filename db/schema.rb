# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_28_211921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "country_facts", force: :cascade do |t|
    t.string "country"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fiber_facts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "care_instructions"
    t.boolean "natural_fiber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_fiber_facts", force: :cascade do |t|
    t.string "percentage"
    t.bigint "item_id"
    t.bigint "fiber_fact_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fiber_fact_id"], name: "index_item_fiber_facts_on_fiber_fact_id"
    t.index ["item_id"], name: "index_item_fiber_facts_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.bigint "country_fact_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_fact_id"], name: "index_items_on_country_fact_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "random_facts", force: :cascade do |t|
    t.string "fact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

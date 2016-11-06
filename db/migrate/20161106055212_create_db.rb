class CreateDb < ActiveRecord::Migration[5.0]
  def change
    create_table "accesses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "country_id"
    t.boolean  "artifacts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accesses_on_user_id", using: :btree
  end

  create_table "artifacts", force: :cascade do |t|
    t.integer  "country_id"
    t.integer  "l1"
    t.integer  "l2"
    t.integer  "l3"
    t.integer  "l4"
    t.integer  "l5"
    t.integer  "l6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "countries_name_uindex", unique: true, using: :btree
    t.index ["user_id"], name: "index_countries_on_user_id", using: :btree
  end

  create_table "master_teches", force: :cascade do |t|
    t.string   "wts_id"
    t.integer  "level"
    t.string   "name"
    t.string   "desc"
    t.string   "unresearched_desc"
    t.boolean  "initially_visible"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["name"], name: "index_master_teches_on_name", unique: true, using: :btree
    t.index ["wts_id"], name: "index_master_teches_on_wts_id", unique: true, using: :btree
  end

  create_table "tech_instances", force: :cascade do |t|
    t.string   "country"
    t.integer  "master_tech_id"
    t.boolean  "visible"
    t.boolean  "researching"
    t.integer  "partial_credit"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["master_tech_id"], name: "index_tech_instances_on_master_tech_id", using: :btree
  end

  create_table "tech_trees", force: :cascade do |t|
    t.integer  "master_tech_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "child_id",       null: false
    t.index ["master_tech_id", "child_id"], name: "nodups", unique: true, using: :btree
    t.index ["master_tech_id"], name: "index_tech_trees_on_master_tech_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.boolean  "admin"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "accesses", "countries", name: "accesses_countries_id_fk"
  add_foreign_key "accesses", "users"
  add_foreign_key "artifacts", "countries", name: "artifacts_countries_id_fk"
  add_foreign_key "countries", "users"
  add_foreign_key "tech_instances", "master_teches"
  add_foreign_key "tech_trees", "master_teches"
end
end

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

ActiveRecord::Schema.define(version: 2019_07_29_033623) do

  create_table "carts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.bigint "users_id"
    t.index ["products_id"], name: "index_carts_on_products_id"
    t.index ["users_id"], name: "index_carts_on_users_id"
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.bigint "users_id"
    t.index ["products_id"], name: "index_comments_on_products_id"
    t.index ["users_id"], name: "index_comments_on_users_id"
  end

  create_table "invoice_link_to_products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_invoice_link_to_products_on_invoice_id"
    t.index ["product_id"], name: "index_invoice_link_to_products_on_product_id"
  end

  create_table "invoice_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.bigint "invoice_status_id"
    t.index ["invoice_status_id"], name: "index_invoices_on_invoice_status_id"
    t.index ["users_id"], name: "index_invoices_on_users_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "stock"
    t.integer "price"
    t.string "image"
    t.text "description"
    t.bigint "category_id"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["provider_id"], name: "index_products_on_provider_id"
  end

  create_table "providers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.bigint "users_id"
    t.index ["products_id"], name: "index_ratings_on_products_id"
    t.index ["users_id"], name: "index_ratings_on_users_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "password_digest"
    t.string "email"
    t.string "fullname"
    t.text "address"
    t.string "phone"
    t.string "gender"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: true
  end

  add_foreign_key "carts", "products", column: "products_id"
  add_foreign_key "carts", "users", column: "users_id"
  add_foreign_key "comments", "products", column: "products_id"
  add_foreign_key "comments", "users", column: "users_id"
  add_foreign_key "invoice_link_to_products", "invoices"
  add_foreign_key "invoice_link_to_products", "products"
  add_foreign_key "invoices", "invoice_statuses"
  add_foreign_key "invoices", "users", column: "users_id"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "providers"
  add_foreign_key "ratings", "products", column: "products_id"
  add_foreign_key "ratings", "users", column: "users_id"
end

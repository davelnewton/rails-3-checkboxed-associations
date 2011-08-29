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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110829033853) do

  create_table "categories", :force => true do |t|
    t.string "name"
  end

  create_table "product_categories", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "category_id"
  end

  add_index "product_categories", ["category_id", "product_id"], :name => "index_product_categories_on_category_id_and_product_id"
  add_index "product_categories", ["product_id", "category_id"], :name => "index_product_categories_on_product_id_and_category_id"

  create_table "products", :force => true do |t|
    t.string "name"
  end

end

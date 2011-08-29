class CreateProductCategoriesTable < ActiveRecord::Migration
  def self.up
    create_table :product_categories, :id => false do |t|
      t.references :product
      t.references :category
    end
    add_index :product_categories, [:product_id, :category_id]
    add_index :product_categories, [:category_id, :product_id]
  end

  def self.down
    drop_table :product_categories
  end
end

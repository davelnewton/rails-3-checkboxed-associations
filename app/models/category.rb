class Category < ActiveRecord::Base
  attr_accessible :name, :category_ids, :categories_attributes
  validates :name, :presence => true
  has_many :product_categories
  has_many :products, :through => :product_categories
end

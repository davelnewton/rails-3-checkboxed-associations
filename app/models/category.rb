class Category < ActiveRecord::Base
  attr_accessible :name, :categories_attributes#, :category_ids
  validates :name, :presence => true
  has_many :product_categories
  has_many :products, :through => :product_categories
end

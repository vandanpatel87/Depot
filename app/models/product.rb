class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  

  validates :description, :price, :title,  :presence => true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
end

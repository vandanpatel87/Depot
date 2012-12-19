class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title

  validates :description, :price, :title,  :presence => true
end

class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :location, :name, :price, :user
end

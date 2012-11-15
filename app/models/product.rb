class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :location, :name, :price, :user
  validates :name, :description, :price, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 1.00}
  validates :image_url, allow_blank: true, format: {
  	with: /\.(png|gif|jpg)/i,
  	message: 'must be a URL for GIF, JPG or PNG image'}
end

class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :location, :name, :price, :user
  validates :name, :description, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 1.00}
  validates :image_url, allow_blank: true, format: {
  	with: /\.(png|gif|jpg)/i,
  	message: 'must be a URL for GIF, JPG or PNG image'}
  has_many :line_items
  before_destroy :ensure_not_reference_by_any_line_item

  private
  	def ensure_not_reference_by_any_line_item
  		if line_items.empty?
  			return true
  		else
  			errors.add(:base, 'Line item present')
  			return false
  		end
  	end
end

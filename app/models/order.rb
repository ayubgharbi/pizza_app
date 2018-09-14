class Order < ApplicationRecord
	has_many :line_items, dependent: :destroy
	validates :address, presence: true

	geocoded_by :address
	after_validation :geocode

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end
end

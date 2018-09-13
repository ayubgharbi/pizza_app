class WelcomeController < ApplicationController
	include CurrentCart
	before_action :set_cart
  	def index
  		@foods = Food.order(:title)
  		@categories = Category.all
  	end
end

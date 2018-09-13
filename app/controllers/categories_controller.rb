class CategoriesController < ApplicationController
	before_action :set_category, only: [:edit, :update, :destroy]
	
	def new 
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)

	    respond_to do |format|
	      if @category.save
	        format.html { redirect_to root_url }
	      else
	        format.html { render :new }
	      end
	    end
	end

	def edit
	end 

	def update
		respond_to do |format|
	      if @category.update(category_params)
	        format.html { redirect_to root_url }
	      else
	        format.html { render :edit }
	      end
	    end
	end 

	def destroy 
	end 
	
	private

    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end

class CategoriesController < ApplicationController
	def show
    	@category = Category.find params[:id]
  	end

  	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to tobes_path
	end
end

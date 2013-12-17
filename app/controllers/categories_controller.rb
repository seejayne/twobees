class CategoriesController < ApplicationController
	before_action :authenticate_user!, :only => [ :new, :create ]

	def show
    	@category = Category.find params[:id]
  	end

  	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to tobes_path
	end
end

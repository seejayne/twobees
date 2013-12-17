class MainController < ApplicationController
	def index
		@user = User.new
	end

	def how_it_works
		@sitesection = :how_it_works
	end


end

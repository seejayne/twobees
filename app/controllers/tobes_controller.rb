class TobesController < ApplicationController

	before_action :authenticate_user!, :only => [ :new, :create ]


	def index
		@tobes = Tobe.all
		@sitesection = :explore
	end

	def new
		@tobe = Tobe.new
	end

	def create
		@tobe = Tobe.new( safe_tobe_params )
		@tobe.user = current_user

		if @tobe.save
			redirect_to tobes_path # if everything is peachy
		else
			render :new #show the form again
		end
	end

	def show
		@tobe = Tobe.find(params[:id])
		@sitesection = :explore

	end

	def edit
		@tobe = Tobe.find(params[:id])
	end

	def update
		@tobe = Tobe.find(params[:id])
		@tobe.update( safe_tobe_params ) #saves for you
		redirect_to tobe_path(@tobe)
	end

	def destroy
		@tobe = Tobe.find(params[:id])
		@tobe.destroy
		redirect_to tobes_path
	end

	private #gets called only inside controller

	def safe_tobe_params
		return params.require(:tobe).permit(:title, :reason, :description)
	end




end

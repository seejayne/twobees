class JournalsController < ApplicationController
	before_action :authenticate_user!, :only => [:create]

	def create
	@tobe = Tobe.find(params[:tobe_id])

    safe_journal = params.require(:journal).permit(:title, :body, :image)

    @journal = Journal.new(safe_journal)
    @journal.tobe = @tobe
    @journal.user = current_user
    @journal.save

    redirect_to @journal.tobe
	end

end

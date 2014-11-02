class LinksController < ApplicationController

	def index
		@links = current_user.links
	end
	
	def new
		@link = Link.new
	end

	def create
		@link = current_user.links.new(params[link])
		@link.standardize_target_url!
		
		if @link.save
			flash[:success] = "Link Created Successfully"
			redirect_to links_path
		else
			render 'new'
	end

	

end

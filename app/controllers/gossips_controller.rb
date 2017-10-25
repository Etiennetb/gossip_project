class GossipsController < ApplicationController

	def index
		@gossips = Gossip.all 
	end

	def new
	end

	def create
		@gossip = Gossip.new(gossip_params)
		if @gossip.save
		redirect_to @gossip
		else
			render "new"
		end
	end

	def edit
		@gossip = Gossip.find(params[:id])
	end

	def destroy
		@gossip = Gossip.find(params[:id])
		@gossip.destroy 
			redirect_to gossips_path
	end
 
	def update
		@gossip = Gossip.find(params[:id])
		if @gossip.update(gossip_params)
			redirect_to @gossip
		else
			render "edit"
		end
	end

	def show
		@gossip = Gossip.find(params[:id])
		puts "Ceci est mon Gossip : #{@gossip}"
	end

	private

	def gossip_params
		params.permit(:anonymous_author, :content)
	end

end

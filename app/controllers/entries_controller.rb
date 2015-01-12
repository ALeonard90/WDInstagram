class EntriesController < ApplicationController
	def index
		@entries = Entry.all
	end

	def show
		@entry = Entry.find(params[:id])
		
	end 

	def new
		@entry = Entry.new
	end

	def create
		@entry = Entry.new(entry_params)
	end

	def edit
		@entry = Entry.find(params[:id])
	end 

	def update
	end

	def destroy
		@entry.destroy
	end 
	
	private
		def entry_params
		params.require(:entry).permit(:author, :photo_url, :date_taken)
		end 
end
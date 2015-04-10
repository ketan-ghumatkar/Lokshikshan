class PrabhagController < ApplicationController

	def index
			if(params.has_key?(:search))
				@matadars = Matadar.search(params[:search])
				respond_to do |format|
					format.html
					format.json { render json: { matadars: @matadars.to_json } }
	  		end
			else
				@matadars = Matadar.all
				respond_to do |format|
					format.html
					format.json { render json: @matadars.map(&:name).to_json }
	  		end
			end
	end

	def search
		@matadars = Matadar.search(params[:search])
		render action: :index
	end
end

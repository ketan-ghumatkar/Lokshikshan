class PrabhagController < ApplicationController

	def index
		if(params.has_key?(:prabhag) && params.has_key?(:search))
			if(params[:prabhag] == "All" && params[:search].blank?)
				@matadars = Matadar.all
			elsif(params[:prabhag] == "All" && params[:search].present?)
				@matadars = Matadar.all.search(params[:search])
			else
				@matadars = Matadar.where(address: params[:prabhag]).search(params[:search])
			end
		else
			@matadars = Matadar.all
		end
		@prabhags = Matadar.uniq.pluck(:address).unshift("All");
	end

	def search
		@matadars = Matadar.search(params[:search])
		@prabhags = Matadar.uniq.pluck(:address).unshift("All");
		render action: :index
	end
end

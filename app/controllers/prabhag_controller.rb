class PrabhagController < ApplicationController
	def index
		if(params.has_key?(:prabhag))
			if(params[:prabhag] == "All")
				@matadars = Matadar.all
			else
				@matadars = Matadar.where(address: params[:prabhag])
			end
		else
			@matadars = Matadar.all
		end
		@prabhags = Matadar.uniq.pluck(:address).unshift("All");
	end
end

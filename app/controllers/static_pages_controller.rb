class StaticPagesController < ApplicationController
	def home
		person = Flickr.people.find("#{params[:user_id]}")
		if params[:commit] ==  "Search"
			begin
			@photos = person.public_photos(sizes: true).map(&:medium500!)
				if @photos && @photos.any?
					@photos
				else
					@photos = :empty
				end
			rescue
				@photos = :invalid
			end
		end
	end
end
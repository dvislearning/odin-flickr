class StaticPagesController < ApplicationController
  def home
  	@user_id = params[:user_id]
  	unless @user_id.nil? || @user_id.empty?
  		@photos = user_photos(@user_id, photo_count = 12)
  	else
  		if params[:commit] ==  "Search"
  			@photos = []
  		end
  	 end
  end

  private

	def user_photos(user_id, photo_count = 12)
		begin
			set_env_variables
			photo_ids = []
			from_flickr = flickr.photos.search(:user_id => user_id).to_a
			from_flickr.each do |photo|
				photo_ids << photo.id
			end
			return photo_ids.in_groups_of(2)
		rescue Exception
			return []
		end
	end
end


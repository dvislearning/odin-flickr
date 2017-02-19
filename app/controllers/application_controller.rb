class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_env_variables
  	FlickRaw.api_key = ENV["api_key"]
  	FlickRaw.shared_secret = ENV["shared_secret"]
  end
end

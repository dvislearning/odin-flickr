Flickr.configure do |config|
  config.api_key       = ENV["flickr_key"]
  config.shared_secret = ENV["flickr_secret"]
end
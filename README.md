# Odin Flickr

Odin Flickr uses the FLickr API to retrieve a user's pictures and display them on screen.  A Flickr user ID is entered into a form and displayed in groups of two.  Credentials are stored an ENV variables and managed with the help of the Figaro gem.  

Part of The Odin Project's [Ruby on Rails Curriculum.](https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis)

View in Heroku at [http://serene-spire-20652.herokuapp.com/](http://serene-spire-20652.herokuapp.com/)

View on GitHub at [https://github.com/dvislearning/odin-flickr](https://github.com/dvislearning/odin-flickr)

### Update March 8, 2018:

When this app was last visted, it appeared to have stopped working.  The flick-raw gem
is about seven years old and doesn't have any recent documentation, so it was replaced
by the flickr-objects gem.

Also, the view files were refactored and moved into partials for better redability.
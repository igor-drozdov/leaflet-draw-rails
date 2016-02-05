[![Build Status](https://api.travis-ci.org/igor-drozdov/leaflet-draw-rails.svg?branch=master)](https://travis-ci.org/iharthrush/leaflet-draw-rails)
[![Gem Version](https://badge.fury.io/rb/leaflet-draw-rails.svg)](http://badge.fury.io/rb/leaflet-draw-rails)

https://github.com/Leaflet/Leaflet.draw is vector drawing and editing plugin for Leaflet.
This gem adds it to your Rails application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'leaflet-draw-rails'
```

And execute:

    $ bundle install

Then require `leaflet.draw` into your `application.js` manifest, which is usually located in `app/assets/javascripts`
    
    //= require leaflet.draw

After that, require `leaflet.draw` into your `application.css` manifest, which is usually located in `app/assets/stylesheets`

    *= require leaflet.draw
    

## Test Helpers

To alleviate testing problems, there are helper methods accessible in RSpec or Cucumber features. `capybara` and `selenium-webdriver` are required.

```ruby
leaflet_draw_marker([ 200, 200 ]).on find('#map')
leaflet_draw_polyline([ [ 200, 200 ], [ 300, 300 ] ]).on find('#map')
leaflet_draw_polygon([ [ 200, 200 ], [ 300, 300 ], [ 300, 200 ] ]).on find('#map')
leaflet_draw_rectangle([ [ 200, 200 ], [ 300, 300 ] ]).on find('#map')
leaflet_draw_circle([ [ 200, 200 ], [ 300, 300 ] ]).on find('#map')
```

Examples can be found in the `features` and `spec/dummy/spec/features` folders.    

## Development

After checking out the repo, run `bundle` to install dependencies. Then, you might want to run `rake` to make sure the tests are green. The `spec/dummy` folder contains a dummy Rails application, which is tested by the specs in `spec/dummy/spec/` folder (mostly by RSpec and Cucumber features using `capybara` and `selenium-webdriver`).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/leaflet-draw-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

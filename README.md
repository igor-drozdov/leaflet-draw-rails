[![Build Status](https://api.travis-ci.org/iharthrush/leaflet-draw-rails.svg?branch=master)](https://travis-ci.org/iharthrush/leaflet-draw-rails)
[![Gem Version](https://badge.fury.io/rb/leaflet-draw-rails.svg)](http://badge.fury.io/rb/leaflet-draw-rails)

https://github.com/Leaflet/Leaflet.draw is vector drawing and editing plugin for Leaflet.
This gem adds it to your Rails application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'leaflet-draw-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install leaflet-draw-rails

## Development

After checking out the repo, run `bundle` to install dependencies. Then, you might want to run `rake` to make sure the tests are green. The `spec/dummy` folder contains a dummy Rails application, which is tested by the specs in `spec/dummy/spec/` folder (mostly by RSpec features using `capybara` and `selenium-webdriver`).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/leaflet-draw-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

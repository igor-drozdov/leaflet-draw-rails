require "leaflet-draw-rails/version"

module Leaflet
  module Draw
    module Rails
      class Engine < ::Rails::Engine
        initializer 'leaflet-draw-rails.assets.precompile' do |app|
          app.config.assets.precompile += %w(images/spritesheet.png images/spritesheet-2x.png)
        end
      end
    end
  end
end

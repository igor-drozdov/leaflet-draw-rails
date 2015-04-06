require 'leaflet-draw-rails/marker'

module Leaflet
  module Draw
    module Rails::Testing
      def leaflet_draw_marker(points)
        Marker.new(points)
      end
    end
  end
end

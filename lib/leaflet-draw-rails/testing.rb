require 'leaflet-draw-rails/marker'
require 'leaflet-draw-rails/polyline'

module Leaflet
  module Draw
    module Rails::Testing
      def leaflet_draw_marker(points)
        Marker.new(points)
      end

      def leaflet_draw_polyline(points)
        Polyline.new(points)
      end
    end
  end
end

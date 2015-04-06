require 'leaflet-draw-rails/marker'
require 'leaflet-draw-rails/polyline'
require 'leaflet-draw-rails/polygon'
require 'leaflet-draw-rails/rectangle'
require 'leaflet-draw-rails/circle'

module Leaflet
  module Draw
    module Rails::Testing
      def leaflet_draw_marker(points)
        Marker.new(points)
      end

      def leaflet_draw_polyline(points)
        Polyline.new(points)
      end

      def leaflet_draw_polygon(points)
        Polygon.new(points)
      end

      def leaflet_draw_rectangle(points)
        Rectangle.new(points)
      end

      def leaflet_draw_circle(points)
        Circle.new(points)
      end
    end
  end
end

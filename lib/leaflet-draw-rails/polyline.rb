require 'leaflet-draw-rails/shape'

module Leaflet::Draw

  module Rails::Testing

    class Polyline < Shape

      def draw!
        @points.each do |x, y|
          @browser.click(x, y)
        end
        @browser.click(*@points.last)
      end

    end
  end
end

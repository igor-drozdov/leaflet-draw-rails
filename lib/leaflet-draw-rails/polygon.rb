require 'leaflet-draw-rails/shape'

module Leaflet::Draw

  module Rails::Testing

    class Polygon < Shape

      def draw!
        @points.each do |x, y|
          @browser.click(x, y)
        end
        @browser.click(*@points.first)
      end

    end
  end
end

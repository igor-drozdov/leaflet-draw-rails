require 'leaflet-draw-rails/shape'

module Leaflet::Draw

  module Rails::Testing

    class Marker < Shape

      def draw!
        @browser.click(*@points)
      end

    end
  end
end

require 'leaflet-draw-rails/shape'

module Leaflet::Draw

  module Rails::Testing

    class Rectangle < Shape

      def draw!
        @browser.move_to(*@points.first)
        @browser.click_and_hold
        @browser.move_to(*@points.second)
        @browser.release
      end

    end
  end
end

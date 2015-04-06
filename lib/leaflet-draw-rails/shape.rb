require 'leaflet-draw-rails/browser'

module Leaflet::Draw

  module Rails::Testing

    class Shape

      def initialize(points)
        @points = points
      end

      def on(map)
        @map = map
        @browser = Browser.new(@map)

        choose_tool!
        draw!
      end

      private

        def choose_tool!
          @map.find(tool_selector).click
        end

        def tool_selector
          class_name = self.class.to_s.split('::').last
          ".leaflet-draw-draw-#{ class_name.downcase }"
        end
    end
  end
end

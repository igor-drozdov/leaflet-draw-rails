module Leaflet::Draw
  module Rails::Testing
    class Browser
      def initialize(el)
        @el = el
      end

      def move_to(x, y)
        action.move_to(native).move_by(*correct_point(x, y)).perform
      end

      def click(x, y)
        move_to(x, y)
        action.click_and_hold.perform
        action.release.perform
      end

      def click_and_hold
        action.click_and_hold.perform
      end

      def release
        action.release.perform
      end

      private

        def correct_point(x, y)
          x_offset = native.size.width / 2
          y_offset = native.size.height / 2
          [ x - x_offset, y - y_offset ]
        end

        def action
          @el.send(:driver).browser.action
        end

        def native
          @el.native
        end
    end
  end
end

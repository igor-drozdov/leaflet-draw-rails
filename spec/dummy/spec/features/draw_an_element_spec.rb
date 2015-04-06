require 'rails_helper'

feature 'Draw an element', js: :true do
  scenario 'Draw a marker' do
    visit '/'

    leaflet_draw_marker([ 100, 100 ]).on(find('#map'))

    expect(page).to have_selector 'img.leaflet-marker-shadow'
  end
end

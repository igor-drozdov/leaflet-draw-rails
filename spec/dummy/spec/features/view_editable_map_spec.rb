require 'rails_helper'

feature 'View editable map', js: :true do
  scenario 'View the source code of Leaflet.draw' do
    visit '/assets/leaflet.draw.js'

    expect(page).to have_content 'Leaflet.draw, a plugin that adds drawing and editing tools to Leaflet powered maps.'

    visit '/assets/leaflet.draw.css'

    expect(page).to have_content 'leaflet-draw-section'
  end

  scenario 'View a page with a map' do
    visit '/'

    expect(page).to have_selector '.leaflet-draw-draw-polyline'
    expect(page).to have_selector '.leaflet-draw-draw-polygon'
    expect(page).to have_selector '.leaflet-draw-draw-rectangle'
    expect(page).to have_selector '.leaflet-draw-draw-circle'
    expect(page).to have_selector '.leaflet-draw-draw-marker'
  end
end

Given /^I am on the homepage$/ do
  visit '/'
end

When /^I draw a polyline on a map$/ do
  leaflet_draw_polyline([ [ 100, 100 ], [ 200, 200 ] ]).on find('#map')
end

Then /^I should see that a polyline is added to the map$/ do
  expect(page).to have_selector 'path.leaflet-clickable'
end


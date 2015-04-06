Given /^I am on the homepage$/ do
  visit '/'
end

When /^I draw a polyline on a map$/ do
  leaflet_draw_polyline([ [ 100, 100 ], [ 200, 200 ] ]).on find('#map')
end

Then /^I should see that a polyline is added to the map$/ do
  expect(page).to have_selector 'path.leaflet-clickable'
end

When /^I draw a polygon on a map$/ do
  leaflet_draw_polygon([ [ 200, 200 ], [ 300, 300 ], [ 300, 200 ] ]).on find('#map')
end

Then /^I should see that a polygon is added to the map$/ do
  expect(page).to have_selector 'path.leaflet-clickable'
end


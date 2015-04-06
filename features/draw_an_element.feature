@javascript
Feature: Draw an element
  In order to mark a location, to which I will be able to point
  As a User
  I want to draw an element on a map

  Background:
    Given I am on the homepage

  Scenario: Draw a polyline
    When I draw a polyline on a map
    Then I should see that a polyline is added to the map

  Scenario: Draw a polygon
    When I draw a polygon on a map
    Then I should see that a polygon is added to the map

  Scenario: Draw a rectangle
    When I draw a rectangle on a map
    Then I should see that a rectangle is added to the map

Feature: Traveller Destinations

  Scenario: A traveller adds a destination
    Given there are some destinations
      And they are registered
      And they are signed in
    When they are on the add traveller destination page
      And they choose a destination
    Then there is a destination in their bucket list

Feature: Traveller Destinations

  Scenario: A traveller adds a destination
    Given there are some destinations
      And they are registered
    When they are on the add destination page
      And they choose a destination
    Then there is a destination in their bucket list

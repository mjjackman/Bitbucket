Feature: Personalised traveller view
  
  Scenario: A traveller logs in.
    Given they are registered
      And they have some destinations
      And they have some to-dos
      And they are on the sign in page
    When they sign in
    Then they are now signed in
      And they are redirected to their personal view
      And they see their destinations and to-dos
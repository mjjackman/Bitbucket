Feature: A traveller likes a ToDo Item

  Background:
    Given they are registered
      And they have some destinations
      And they have some to-dos
      And they are on the sign in page
      And they sign in

  @javascript
  Scenario: A traveller likes a to do
    Given they are looking at their profile
    When they like a to do item
    Then the numbers of likes should increase
      Then we store the liked item in the database

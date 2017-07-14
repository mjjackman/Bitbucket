Feature: A traveller crowdsources destinations and todo items

  Background:
    Given they are registered
      And they are on the sign in page
      And they sign in
      And they are on the map page

  @wip @javascript
  Scenario: A traveller creates a destination and multiple todo items
    When they fill in a destination
      And they press 'Add To Do Item'
      And they fill in that todo item
      And they press 'Add To Do Item'
      And they fill in that todo item
      And they save the destination
    Then the destination is added with all the todo items without refreshing



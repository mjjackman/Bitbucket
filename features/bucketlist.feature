Feature: Bucket List
  @wip
  Scenario: A traveller sees all their bucketlist items ordered by priority
    Given they are registered
      And they are signed in
      And they have some destinations
      And they have some to-dos
      And the to-dos are given priorities
    When they visit their show page
    Then they see their destinations and to-dos
      And they see them ordered by priority

Feature: Bucket List
  @wip
  Scenario: A traveller sees all their bucketlist items ordered by priority
    Given they are registered
      And they are on the sign in page
      And they sign in
      And they have multiple destinations
      And they have multiple to-dos
      And the to-dos are given priorities
    When they visit their show page
    Then they see their destinations and to-dos
      And they see them ordered by priority

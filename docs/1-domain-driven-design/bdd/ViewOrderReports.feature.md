```
@tag ViewOrderReports
Feature: View orders summary report

  @tag1
  Scenario: View report of completed orders
    Given I am a user with Administrator permissions
    And I have logged-in
    When I select Reports/Compeleted Orders
    Then a list of the monthly sum of order net totals will be listed for the last 12 months
```
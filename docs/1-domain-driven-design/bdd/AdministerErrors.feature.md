```
@AdministerErrors
Feature: View and administer system errors 

  @tag1
  Scenario: View previous application errors
    Given I am a user with Administrator permissions
    And I have logged-in
    When I select Administration/Errors
    Then a list of any business and system errors will be listed, in descending by time, containing original message, custom error code and error message.
```
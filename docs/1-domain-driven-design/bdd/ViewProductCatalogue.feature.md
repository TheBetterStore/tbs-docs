```
@ViewProductsInCartFeature
Feature: View products available for purchase

  @tag1
  Scenario: View products in catalogue with selected filter
    Given I have navigated to the Products screen
    When I select a Category
    Then a list of the first 25 products belonging to the category will be returned, ordered alphabetically by name

  @tag2
  Scenario Outline: Search products in catalogue by title
    Given I have navigated to the Products screen
    And I have entreed a search keyword
    When I click Search
    Then a list of the first 25 products that contain the keyword will be returned, ordered alphabetically by name
```
#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
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

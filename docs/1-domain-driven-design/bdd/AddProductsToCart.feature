@tag
Feature: Add Products to Cart

  @tag1
  Scenario: Add product to Cart
    Given I have been presented products within the Catalogue screen
    And A product of interest is In Stock
    When I select Add to Cart
    Then The product will be added to my Cart
    And Its quantity in my Cart will be initialised to 1, or incremented by 1 if previously-added

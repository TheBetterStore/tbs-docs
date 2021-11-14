```
@FulfillOrderFeature
Feature: Fulfill Order

  @FulfillElectronicItemsInShippingOrder
  Scenario: Fulfill ElectronicItems In ShippingOrder
    Given I have been presented with a shipping order following a purchase of products
    When 1 or more contained product(s) are to be fulfilled electronically
    Then The product(s) will be sent to the Customer as an email with attachment
    And the Product status in the order will be marked as Processed
    And the Order will be marked as Processed if there are no more Pending items otherwise it will remain as Pending

  @FulfillPhsicalItemsInShippingOrder
  Scenario: Fulfill Physical Items In ShippingOrder
    Given I have been presented with a pending shipping order following a purchase of products
    When 1 or more contained product(s) are to be fulfilled physically
    Then The product(s) will be sent to the dispatch team for packaging and courier
    And the Product status in the order will be marked as Processed
    And the Order will be marked as Processed if there are no more Pending items otherwise it will remain as Pending
```
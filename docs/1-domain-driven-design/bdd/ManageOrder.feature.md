```
@ManageOrderFeature
Feature: Manage customer orders

	@ViewOrderHistory
  Scenario: View previous orders in the last 6 months
    Given that I am a registered customer
    And have logged into the system
    When I click View Order History
    Then a list of my previous orders made; their dates and net totals will be displayed in reverse chronological order.
    
	@ViewOrder
  Scenario: View a selected previous order from the last 6 months
    Given that I am a registered customer
    And I have logged into the system
    When I click a specific Order from the Order History screen
    Then the order's details will be retrieved and displayed; including chosen items, totals and delivery details.

	@CancelOrder
  Scenario: Checks if an order can be cancelled
    Given An order has been paid
    And the order only contains physical products
    And the order has not yet been fulfilled
    When I view my submitted orders
    Then the Cancel Order option will be available; otherwise it will be disabled.
        
```
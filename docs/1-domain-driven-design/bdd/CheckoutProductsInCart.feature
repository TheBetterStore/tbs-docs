@tag
Feature: Purchase Products in Cart

	@tag1
  Scenario: Purchase products in Cart when not Logged-In
    Given I have an open web session to "The Better Store"
    And the View Cart screen has been selected
    And I have Products added and listed in the Cart
    And I have not logged-in as an existing Customer
    When I click the Checkout button
    Then I will be redirected to the Login screen
    And I will be promted to login as an existing customer or sign-up
    
	@tag1
  Scenario: Purchase products in Cart when Logged-In for physical Fulfillment
    Given I have an open web session to "The Better Store"
    And the View Cart screen has been selected
    And I have Products added and listed in the Cart
    And I have already logged-in as an existing Customer
    When I click the Checkout button
    And 1 or more products requires physical delivery
    Then I will be presented to confirm my delivery address
    
	@tag1
  Scenario: Purchase products in Cart when Logged-In for electonic Fulfillment
    Given I have an open web session to "The Better Store"
    And the View Cart screen has been selected
    And I have Products added and listed in the Cart
    And I have already logged-in as an existing Customer
    When I click the Checkout button
    And no products requires physical delivery
    Then I will be redirected to the confirm Order screen
    And no shipping cost will be added
        
	@tag1
  Scenario: Confirm delivery address for Fulfillment of products in Cart
    Given I have checked my delivery Address
    When I click the Confirm button
    Then I will be redirected to the confirm Order screen
    And the shipping cost for my address will be added

	@tag1
  Scenario: Confirm Order
    Given I have been redirected to the Confirm Order screen
    When I click the Order button
    Then I will be redirected to the external Payment System for Card payment
    
	@tag1
  Scenario: Order Purchased
    Given I have been redirected to the Payment System for a confirmed order
    When I submit valid Card details
    And Payment is approved
    Then My order details with cart details will be stored in the Order Repository
    And I an electronic Receipt will be emailed to me
    And A shipping order is sent for Fulfillment
    And I will be directed to a Purchase Confirmation screen
        
	@tag1
  Scenario: Order Rejected
    Given I have been redirected to the Payment System for a confirmed order
    When I submit valid Card details
    And Payment is rejected
    Then I will be directed back to my Cart screen with original items still listed
    And A Payment Unsuccessful message will be displayed
            
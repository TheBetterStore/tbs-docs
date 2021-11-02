@tag
Feature: Maintain Products in Cart

  @tag1
  Scenario: View products in Cart
    Given I have an open web session to The Better Store
    When I select View Cart
    Then The Cart screen will be displayed
    And A list of products added will be listed, alongside product gross cost, the selected quantity (which is editable), the total product cost with quantity, and a delete button if whiching to remove 
    And A Cart gross total for all selected products/quantities
    And A Cart tax total
    And A Cart net total 

	@tag1
  Scenario: Update product quantity in Cart
    Given I have an open web session to The Better Store
    And the View Cart screen has been selected
    And I have products added and listed in the cart
    When I update the quantity of a product with a number > -1 and < 100
    And I click Apply
    Then the product total cost, will be updated based on the entered quantity 
    And the Cart gross total for all selected products/quantities is updated with the new value
    And the Cart tax total is updated with the new value
    And the Cart net total is updated with the new value
    
	@tag1
  Scenario: Remove product from Cart
    Given I have an open web session to The Better Store
    And the View Cart screen has been selected
    And I have products added and listed in the cart
    When I click the Remove button alongside a listed product
    Then the product will be removed from the list 
    And the Cart gross total for all selected products/quantities is updated with the new value minus the product
    And the Cart tax total is updated with the new value minus the product
    And the Cart net total is updated with the new value minus the product
    
        
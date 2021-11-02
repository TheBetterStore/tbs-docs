@CustomerLoginFeature
Feature: Customer Login

  @CustoemrLogin
  Scenario: Customer Login
    Given I have an open web session to "The Better Store"
    And I am not already logged-in
    When I select Login from the home page
    Then I will be prompted to submit my registed email and secret password


  @LoginSuccess
  Scenario: Customer Login Success
    Given I have an open web session to "The Better Store"
    And I have submitted credentials for a login request
    When my credentials have been successfully-authorised
    Then I will be presented with a Login Successful confirmation
    And I will be redirected to the Home page
    And my first name will be displayed in the page menu, with options of seeing my profile and order history
    
  @LoginFailed
  Scenario: Customer Login Failure
    Given I have an open web session to "The Better Store"
    And I have submitted credentials for a login request
    When my credentials have not been successfully-authorised
    Then I will be presented with a Login Failed message
    And I will be redirected back to the Login screen  
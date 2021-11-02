@tag
Feature: Customer Signup

  @tag1
  Scenario: Customer Signup
    Given I have an open web session to "The Better Store"
    And I am not an existing customer, or not logged-in
    When I select Sign Up from the home page
    Then I will be prompted to submit my email as userid,a custom password at-least 8 chars long, name, and shipping address
    And I will be sent an email verification check via email

  @tag1
  Scenario: Customer Signup Verification
    Given I have submitted a sign-up request
    When I receive a verification check via email
    And I click on its provided link within 24 hours of opting to Sign-up
    Then I will be presented with a Vreification Successful confirmation
    And I will be redirected to the site's Sign In page
    And I will be able to sign-in
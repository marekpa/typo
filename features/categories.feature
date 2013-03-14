Feature: Working with categories
  As a blog administrator
  In order to work with categories
  I want to be able to add new category and edit existing ones
  
  Background:
    Given the blog is set up  
  
  Scenario: A admin can add category
    And I am logged into the admin panel
    And "Foobar" category is created
    Then I should see "Category was successfully saved."  

Feature: Merge Articles
  As a blog administrator
  In order to compress number of articles
  I want to be able to merge two articles into one

  Background:
    Given the blog is set up
  
  Scenario: A non-admin cannot merge two articles
    And I am logged into the author panel
    And "Foobar" article is published
    And I follow "Foobar"
    Then I should not see "Merge Articles"

  Scenario: A admin can merge articles
    And I am logged into the admin panel
    And "Foobar" article is published
    And "Pokus1" article is published
    And I follow "Foobar"
    Then I should see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    And I am logged into the admin panel
    And "Foobar" article is published
    And "Pokus1" article is published
    And I merge "Foobar" article with "Pokus1"
    Then merged article should contain the text of both articles


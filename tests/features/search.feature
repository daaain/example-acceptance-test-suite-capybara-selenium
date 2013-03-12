Feature: Search
  As a visitor
  I want to be able to see results related to the search term I submit
  So that I can find what I'm looking for

  Scenario: Typing in a search terms
    Given a search field
    When I submit the search for "the answer to the question of life"
    Then waiting 1 seconds
    Then I should see a list of results
    And I should see "42" in the results
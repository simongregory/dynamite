Feature: As a dynamite consumer I want to know that feeds are available
  In order to read schedule and programme information
  As the iPlayer team
  I want to be able to load programme metadata from Dynamite in JSON format

  Scenario: Loading the Episode Detail Feed
    When I ask for the episode detail json feed
    Then the episode detail feed should be returned in JSON format

  Scenario: Loading the List View Feed
    When I ask for the list view json feed
    Then the list view feed should be returned in JSON format

  Scenario: Loading the Multi Now Next Radio Feed
    When I ask for the multi now next radio json feed
    Then the multi now next feed should be returned in JSON format

  Scenario: Loading the Multi Now Next TV Feed
    When I ask for the multi now next tv json feed
    Then the multi now next feed should be returned in JSON format

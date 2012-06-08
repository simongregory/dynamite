Feature: As a dynamite consumer I want to know that feeds are available
  In order to read schedule and programme information
  As the iPlayer team
  I want to be able to load programme metadata from Dynamite in JSON format

  Scenario: Episode Detail
    When I ask for the episode detail json feed
    Then the episode detail feed should be returned in JSON format

  Scenario: List View
    When I ask for the list view json feed
    Then the list view feed should be returned in JSON format

  Scenario: Now Next
    When I ask for the now next json feed
    Then the now next feed should be returned in JSON format

  Scenario: Multi Now Next Radio
    When I ask for the multi now next radio json feed
    Then the multi now next feed should be returned in JSON format

  Scenario: Multi Now Next TV
    When I ask for the multi now next tv json feed
    Then the multi now next feed should be returned in JSON format

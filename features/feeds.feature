Feature: As a dynamite consumer I want to know that feeds are available
  In order to read schedule and programme information
  As the iPlayer Desktop Application
  I want to be able to request and load programme metadata from Dynamite

  Scenario: Loading the Episode Detail Feed
    When I ask for the episode detail feed
    Then the episode detail feed should be returned in XML format
  
  Scenario: Loading the List View Feed
    When I ask for the list view feed
    Then the list view feed should be returned in XML format
  


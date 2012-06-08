Feature: As a dynamite consumer I want to know that feeds are available
  In order to read schedule and programme information
  As the iPlayer Desktop Application
  I want to be able to load programme metadata from Dynamite in XML format

  Scenario: Loading the Episode Detail Feed
    When I ask for the episode detail xml feed
    Then the episode detail feed should be returned in XML format

  Scenario: Loading the List View Feed
    When I ask for the list view xml feed
    Then the list view feed should be returned in XML format

	Scenario: Loading the Multi Now Next Radio Feed
		When I ask for the multi now next radio xml feed
		Then the multi now next feed should be returned in XML format

	Scenario: Loading the Multi Now Next TV Feed
		When I ask for the multi now next tv xml feed
		Then the multi now next feed should be returned in XML format

	Scenario: Loading the Now Next Feed
		When I ask for the now next xml feed
		Then the now next feed should be returned in XML format


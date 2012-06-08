Feature: Flagpole
  In order to monitor the status of Dynamite Feeds
  As a User
  I want all feeds polled to establish availability

  Scenario: Polling the Episode Detail Feed
    When I check the status of the episode detail feed
    Then the HTTP response code should be 200

  Scenario: Polling the List View Feed
    When I check the status of the list view feed
    Then the HTTP response code should be 200

  Scenario: Polling the Most Popular Feed
    When I check the status of the most popular feed
    Then the HTTP response code should be 200

  Scenario: Polling the Multi Now Next Radio Feed
    When I check the status of the multi now next radio feed
    Then the HTTP response code should be 200

  Scenario: Polling the Multi Now Next TV Feed
    When I check the status of the multi now next tv feed
    Then the HTTP response code should be 200

  Scenario: Polling the Now Next Feed
    When I check the status of the now next feed
    Then the HTTP response code should be 200

  Scenario: Polling the Playlist Feed
    When I check the status of the playlist feed
    Then the HTTP response code should be 200

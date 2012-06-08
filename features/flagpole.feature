Feature: Flagpole
  In order to monitor the status of Dynamite Feeds
  As a User
  I want all feeds polled to establish availability

  Scenario: Episode Details
    When I check the status of the episode detail feed
    Then the HTTP response code should be 200

  Scenario: List View
    When I check the status of the list view feed
    Then the HTTP response code should be 200

  Scenario: Most Popular
    When I check the status of the most popular feed
    Then the HTTP response code should be 200

  Scenario: Now Next Feed
    When I check the status of the now next feed
    Then the HTTP response code should be 200

  Scenario: Multi Now Next Radio
    When I check the status of the multi now next radio feed
    Then the HTTP response code should be 200

  Scenario: Multi Now Next TV
    When I check the status of the multi now next tv feed
    Then the HTTP response code should be 200

  Scenario: Hardtalk Playlist
    When I check the status of the playlist feed
    Then the HTTP response code should be 200

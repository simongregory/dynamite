Feature: Flagpole
  In order to monitor the status of Dynamite Feeds
  As a User
  I want all feeds polled to establish availability

  Scenario Outline: ION availablity
    When I check the status of the <Feed> feed
    Then the HTTP response code should be <Response>

    Examples:
        | Feed                 | Response |
        | now next             | 200      |
        | playlist             | 200      |
        | multi now next tv    | 200      |
        | multi now next radio | 200      |
        | list view            | 200      |
        | episode detail       | 200      |
        | most popular         | 200      |

Feature: As a dynamite consumer I want to know that feeds are available
  In order to read schedule and programme information
  As the iPlayer team
  I want to be able to load programme metadata from Dynamite in JSON format

  Scenario Outline: Feed results returned as JSON
    When I request <Feed> data in json
    Then <Format> should be returned

    Examples:
        | Feed                 | Format |
        | now next             | JSON   |
        | multi now next tv    | JSON   |
        | multi now next radio | JSON   |
        | list view            | JSON   |
        | episode detail       | JSON   |
        | most popular         | JSON   |

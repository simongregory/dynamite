Feature: As a dynamite consumer I want to know that feeds are available
  In order to read schedule and programme information
  As the iPlayer Desktop Application
  I want to be able to load programme metadata from Dynamite in XML format

  Scenario Outline: Feed results returned as XML
    When I request <Feed> data in XML
    Then <Format> should be returned

    Examples:
        | Feed                 | Format |
        | now next             | XML    |
        | multi now next tv    | XML    |
        | multi now next radio | XML    |
        | list view            | XML    |
        | episode detail       | XML    |
        | most popular         | XML    |

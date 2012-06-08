Feature: Feeds provided in JSON or XML
  In order to retrive schedule and programme information in a friendly format
  As a Dynamite client
  I want to be able to specify that results are returned in XML or JSON formats

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
        | playlist             | XML    |
        | schedule             | XML    |

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
        | schedule             | JSON   |

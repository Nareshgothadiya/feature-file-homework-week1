Feature: Demo Nopcommerce's topmanu acceptance criteria
  as a user, I would like to check acceptance criteria of Nopcommerce topmenu

  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And  User click on Enter button
    Then User is on given URL

  Scenario: Verify that user can navigate to Books category
    When User is on given URL
    And  Click on Books tab on Top Menu
    Then User is navigates to Books Category page

  Scenario: Verify that user can navigate to Books category page with filters and list products
    When User is on given URL
    And  Click on Books tab on Top Menu
    And  Check Filters and List Tab.
    Then Books Category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on  Books category page
    Given User is on Books Category Page
    When  User is on Books Category Page
    And   Check 'Sort by' filter is present
    Then  'Sort by' filer is available on Books Category page

  Scenario: Verify that user can see 'Display' filter on  Books category page
    Given User is on Books Category Page
    When  User is on Books Category Page
    And   Check 'Display' filter is present
    Then  'Display' filer is available on Books Category page

  Scenario: Verify that user can see 'Grid' tab on  Books category page
    Given User is on Books Category Page
    When  User is on Books Category Page
    And   Check 'Grid' tab is present
    Then  'Grid' tab is available on Books Category page

  Scenario: Verify that user can see 'List' tab on  Books category page
    Given User is on Books Category Page
    When  User is on Books Category Page
    And   Check 'List' tab is present
    Then  'List' tab is available on Books Category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present on 'Sort by' filter
    Given User is on Books Category Page
    When  User is on Books Category Page
    And   Click on 'Sort by' Filter
    And   Check that 'Name: A to Z' selection is present
    Then  'Name: A to Z' selection is present on 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' selection is present on 'Sort by' filter
    Given User is on Books Category Page
    When  User is on Books Category Page
    And   Click on 'Sort by' Filter
    And   Check that 'Name: A to Z' selection is present
    Then  'Name: A to Z' selection is present on 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option on 'Sort by' filter
    Given User is on Books Category Page
    When  User is on Books Category Page
    And   Click on 'Sort by' Filter
    And   Check that 'Name: A to Z' is first in order
    Then  'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected (Note: Product are filtered in alphabetical order)
    Given User is on Books Category Page
    When  User is on Books Category Page
    And   Click on 'Sort by' Filter
    And   Select 'Name: A to Z' Filter
    Then  All Product are displayed in alphabetical order














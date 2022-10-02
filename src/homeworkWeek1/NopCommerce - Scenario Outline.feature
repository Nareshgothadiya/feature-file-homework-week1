Feature: Book Category

  Background: I should be able to see home page
    Given I enter URL "https://demo.nopcommerce.com" in browser
    And   I am on home page

  Scenario Outline: I should be able to see top manu tabs on homepage with categories
    When I am on home page
    Then I should be able to see top manu tabs with "<categories>"

    Examples:
      | categories        |
      | Computer          |
      | Electronics       |
      | Apparel           |
      | Digital Downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top manu tabs on home page
    Then I should be navigate to book category
    And  I should be able to see "<filters>"
    Examples:
      | filters  |
      | short by |
      | Display  |
      | The Grid |
      | List Tab |

  Scenario Outline: I should be able to list of terms of each filters
  Given: I am on book page
  When:  I click on "<filters>"
  Then:  I should be able to see "<list>" in dropdown menu
    Examples:
      | filters  | list                                                                           |
      | short by | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display  | 3, 6, 9                                                                        |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When  I click on "<filters>"
    And   I click on any "<option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to see "<result>"
    Examples:
      | filters  | option             | result                                                             |
      | short by | Name:A to Z        | shorted product with the product name in alphabetical order A to Z |
      | short by | Name: Z to A       | shorted product with the product name in alphabetical order Z to A |
      | short by | Price: Low to High | shorted product with the price in descending order                 |
      | short by | Price: High to Low | shorted product with the price in ascending order                  |
      | short by | Created on         | Recently added product should be show first                        |
      | Display  | 3                  | 3 Products in a page                                               |
      | Display  | 6                  | 6 Products in a page                                               |
      | Display  | 9                  | 9 Products in a page                                               |

  Scenario Outline: I should be able to product display format according display format type as per given picture in srs document
  Given: I am on book page
  When:  I click on "<display format icon>"
  Then:  I should be able to product display format according display format type as per given picture in srs document
    Examples:
      | display format icon |
      | Grid                |
      | List                |













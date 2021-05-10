 
Feature: Validation Tags

  @user1 @web
  Scenario: Create Tag
    Given I navigate to page with the url stored in the variable
    Given I am authenticated I logged in successfully
    When I go to page whit url "/ghost/#/tags/new"
    Then I enter "Automatizacion" into input field having id "tag-name"
    Then I enter "Automatizacion" into input field having id "tag-slug"
    Then I click on element "/html/body/div[2]/div/main/section/form/header/section/button/span"
    Then I go to page whit url "/ghost/#/tags"
  
  @user2 @web
  Scenario: Validate Tag in Post
    Given I navigate to page with the url stored in the variable
    Given I am authenticated I logged in successfully
    When I go to page whit url "/ghost/#/posts/"
    Then I selectItem "/html/body/div[2]/div/main/section/section/ol/li[2]/a[2]/h3"
    Then I click on element "/html/body/div[2]/div/main/section/header/section/button"
    Then I click on element having id "tag-input"
    Then I click on element "/html/body/div[4]/div/div/div/div/div/div/div/div[1]/div[2]/form/div[3]/div/div/div/div[2]/div/ul/li"
    
      
  @user3 @web
  Scenario: Validate Tag in Tag
    Given I navigate to page with the url stored in the variable
    Given I am authenticated I logged in successfully
    When I go to page whit url "/welcome/"
    Then I click on element "/html/body/div/main/div/article/header/section/a"
    
  @user4 @web
  Scenario: Validate Tag in Web Reader
    Given I navigate to page with the url stored in the variable
    Given I am authenticated I logged in successfully
    When I go to page whit url "/welcome/"
    Then I click on element "/html/body/div/main/div/article/header/section/a"
    
  @user5 @web
  Scenario: Delete Tag
    Given I navigate to page with the url stored in the variable
    Given I am authenticated I logged in successfully
    When I go to page whit url "/ghost/#/tags/"
    Then I selectItem "/html/body/div[2]/div/main/section/section/ol/li[2]/a[1]/h3"
    Then I click on element "/html/body/div[2]/div/main/section/button/span"
    Then I click on element "/html/body/div[4]/div/div/div/div/div[2]/section/div[2]/button[2]/span"

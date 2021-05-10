 
Feature: Validation Tags

  @user1 @web
  Scenario: Create Tag
    Given I navigate to page "http://localhost:2371/ghost/"
    When I enter "af.baron10@uniandes.edu.co" into input field having id "ember8"
    When I enter "Juanpablo1" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "http://localhost:2371/ghost/#/tags/new"
    Then I enter "Automatizacion" into input field having id "tag-name"
    Then I enter "Automatizacion" into input field having id "tag-slug"
    Then I click on element "/html/body/div[2]/div/main/section/form/header/section/button/span"
    Then I navigate to page "http://localhost:2371/ghost/#/tags"
  
  @user2 @web
  Scenario: Validate Tag in Post
    Given I navigate to page "http://localhost:2371/ghost/"
    When I enter "af.baron10@uniandes.edu.co" into input field having id "ember8"
    When I enter "Juanpablo1" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "http://localhost:2371/ghost/#/posts/"
    Then I selectItem "/html/body/div[2]/div/main/section/section/ol/li[2]/a[2]/h3"
    Then I click on element "/html/body/div[2]/div/main/section/header/section/button"
    Then I click on element having id "tag-input"
    Then I click on element "/html/body/div[4]/div/div/div/div/div/div/div/div[1]/div[2]/form/div[3]/div/div/div/div[2]/div/ul/li"
    
      
  @user3 @web
  Scenario: Validate Tag in Tag
    Given I navigate to page "http://localhost:2371/ghost/"
    When I enter "af.baron10@uniandes.edu.co" into input field having id "ember8"
    When I enter "Juanpablo1" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "http://localhost:2371/welcome/"
    Then I click on element "/html/body/div/main/div/article/header/section/a"
    
  @user4 @web
  Scenario: Validate Tag in Web Reader
    Given I navigate to page "http://localhost:2371/ghost/"
    When I enter "af.baron10@uniandes.edu.co" into input field having id "ember8"
    When I enter "Juanpablo1" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "http://localhost:2371/welcome/"
    Then I click on element "/html/body/div/main/div/article/header/section/a"
    
  @user5 @web
  Scenario: Delete Tag
    Given I navigate to page "http://localhost:2371/ghost/"
    When I enter "af.baron10@uniandes.edu.co" into input field having id "ember8"
    When I enter "Juanpablo1" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "http://localhost:2371/ghost/#/tags/"
    Then I selectItem "/html/body/div[2]/div/main/section/section/ol/li[2]/a[1]/h3"
    Then I click on element "/html/body/div[2]/div/main/section/button/span"
    Then I click on element "/html/body/div[4]/div/div/div/div/div[2]/section/div[2]/button[2]/span"

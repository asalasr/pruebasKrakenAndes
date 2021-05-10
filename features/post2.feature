Feature: Eliminar un post

  @user1 @web
  Scenario: Escenario 2 Eliminar un post
    Given I navigate to page with the url stored in the variable
    Given I am authenticated I logged in successfully
    When I go to page whit url "/ghost/#/posts"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[2]/div/main/section/section/ol/li[2]/a[2]/h3"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[2]/div/main/section/header/section/button"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[4]/div/div/div/div/div/div/div/div[1]/div[2]/form/button"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[4]/div[2]/div/div/div/div[2]/section/div[2]/button[2]/span"
    Then I wait for 2 seconds 
    
  
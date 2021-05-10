Feature: Publicar un post

  @user1 @web
  Scenario: Escenario 4 verificar generar slug
    Given I navigate to page with the url stored in the variable
    Given I am authenticated I logged in successfully
    When I go to page whit url "/ghost/#/posts?type=published"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[2]/div/main/section/section/ol/li[2]/a[2]"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[2]/div/main/section/header/section/button"
    Then I wait for 3 seconds
    Then I visit to slug route
    
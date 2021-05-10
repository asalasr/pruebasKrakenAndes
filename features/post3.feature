Feature: Publicar un post

  @user1 @web
  Scenario: Escenario 3 publicar un post y verificarlo en la página
    Given I navigate to page with the url stored in the variable
    Given I am authenticated I logged in successfully
    When I go to page whit url "/ghost/#/posts"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[2]/div/main/section/section/ol/li[2]/a[2]/h3"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[2]/div/main/section/header/section/div/div[1]"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[1]/div/footer/button[2]"
    Then I wait for 2 seconds
    Then I go to page whit url "/"
    
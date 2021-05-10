Feature: Crear un post como borrador

  @user1 @web
  Scenario: Escenario 1 crear un post como borrador con título
    Given I navigate to page with the url stored in the variable
    Given I am authenticated I logged in successfully
    When I go to page whit url "/ghost/#/editor/post"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[2]/div/main/section/div[1]/div[1]/textarea"
    Then I write text "Eltitulo875" in path "/html/body/div[2]/div/main/section/div[1]/div[1]/textarea"
    Then I click in path "/html/body/div[2]/div/main/section/div[1]/div[1]/article/div[1]/div"
    Then I wait for 3 seconds
    Then I go to page whit url "/ghost/#/posts"
    Then I wait for 3 seconds 
  
 
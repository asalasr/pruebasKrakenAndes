Feature: Crear un post como borrador

  @user1 @web
  Scenario: Escenario 1 crear un post como borrador con título
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    When I enter "j.carvajalm@uniandes.edu.co" into input field having id "ember8"
    When I enter "wPPtrNeuUAkA7D3" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "http://localhost:2368/ghost/#/editor/post"
    Then I wait for 3 seconds
    Then I click in path "/html/body/div[2]/div/main/section/div[1]/div[1]/textarea"
    Then I write text "Eltitulo875" in path "/html/body/div[2]/div/main/section/div[1]/div[1]/textarea"
    Then I click in path "/html/body/div[2]/div/main/section/div[1]/div[1]/article/div[1]/div"
    Then I wait for 3 seconds
    Then I navigate to page "http://localhost:2368/ghost/#/posts"
    Then I wait for 3 seconds 
  
 
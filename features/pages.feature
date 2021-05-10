Feature: Shared board connection

  @user1 @web
  Scenario: Escenario No.1 probar el borrador de una pagina 
    Given I navigate to page "http://www.localhost:2371/ghost/"
    When I enter my email "af.baron10@uniandes.edu.co" 
    And I enter my password "Juanpablo1"
    When I click on sign in
    And I visit pages
    And I click on new page
    And I write a new title "Test de prueba"
    And I go back to pages without publishing
    Then I expect to see the title of my publication "Test de prueba"

  @user2 @web
  Scenario: Escenario No.2 probar la publicación de una pagina 
    Given I navigate to page "http://www.localhost:2371/ghost/"
    When I enter my email "af.baron10@uniandes.edu.co" 
    And I enter my password "Juanpablo1"
    When I click on sign in
    And I visit pages
    And I click on new page
    And I write a new title "Test de prueba"
    Then I publish my page

  @user3 @web
  Scenario: Escenario No.3 eliminar una pagina
    Given I navigate to page "http://www.localhost:2371/ghost/"
    When I enter my email "af.baron10@uniandes.edu.co" 
    And I enter my password "Juanpablo1"
    When I click on sign in
    And I visit pages
    And I click on new page
    And I write a new title "Test de prueba"
    And I publish my page
    Then I delete my page

  @user4 @web
  Scenario: Escenario No.4 verificar el autor de una pagina
    Given I navigate to page "http://www.localhost:2371/ghost/"
    When I enter my email "af.baron10@uniandes.edu.co" 
    And I enter my password "Juanpablo1"
    When I click on sign in
    And I visit pages
    When I click on new page
    And I write a new title "Test de prueba"
    And I publish my page
    And I go back to pages
    Then I confirm the user "dw"





  
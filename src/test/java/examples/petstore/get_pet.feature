Feature: Get Pet by ID

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Get pet by ID
  * def get_pet_request = read('classpath:data/pet/get_pet_request.json')
    Given path '/pet/', get_pet_request.id
    When method get
    Then status 200
    And match response.name == 'Chelsea'
Feature: Update Pet

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Update pet name and status
    * def update_pet_request = read('classpath:data/pet/update_pet_request.json')
    Given path '/pet'
    And request update_pet_request
    When method put
    Then status 200
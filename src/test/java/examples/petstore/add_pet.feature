Feature:Add Pet
  Background:
    * url "https://petstore.swagger.io"
    Scenario: Add Pet
      * def add_pet_request = read('classpath:data/pet/add_pet_request.json')
      Given path '/v2/pet'
      And request add_pet_request
      When method post
      Then status 200

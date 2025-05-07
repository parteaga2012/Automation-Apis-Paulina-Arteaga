Feature: Delete Pet by ID

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def pet = read('classpath:data/pet/delete_pet_request.json')
    * def petId = pet.id

  Scenario: Create,Delete,check pet by ID
  # Create pet
    Given path 'pet'
    And request pet
    When method post
    Then status 200
    And match response.id == petId

  # Delete pet
      Given path 'pet', petId
      When method delete
      Then status 200
      And match response.message == petId.toString()

  # Check pet
      Given path 'pet', petId
      When method get
      Then status 404

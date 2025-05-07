Feature: Get Pet by Status

  Background:
    * url 'https://petstore.swagger.io/v2'

Scenario: Get pet by status "sold"
  Given path '/pet/findByStatus'
  And param status = 'sold'
  When method get
  Then status 200
  * def pets = response
  * print pets
  And match each pets contains { status: 'sold' }
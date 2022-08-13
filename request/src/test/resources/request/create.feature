Feature: Create a new user
  As QA automation
  I want create a new user
  To valid the status code and response

  Background: consume the service
    * url url

  Scenario: Check the services by POST method
    * def requestCreate = {"name": '#(name)',"job": '#(job)'}

    Given path 'users'
    And request requestCreate
    When method post
    Then status 201
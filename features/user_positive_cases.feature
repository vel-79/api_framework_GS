Feature: Positive scenarios for /users API

  Scenario: Create new user with valid student details
    Given a "POST" request is made to "/users"
    When these parameters are supplied in URL:
      | name     | Vitalii Kachalo   |
      | email    | vitalii@gmail.com |
      | password | secret           |
    Then the api call should succeed
    And these response keys should have value:
      | name  | Vitalii Kachalo   |
      | email | vitalii@gmail.com |

  Scenario: Logout user
    Given a "DELETE" request is made to "/logout"
    Then the api call should succeed
    And these response keys should have value:
      | Success | Logged out |

  Scenario: Login with valid user details
    Given a "POST" request is made to "/login"
    When these parameters are supplied in URL:
      | email    | vitalii@gmail.com |
      | password | secret           |
    Then the api call should succeed
    And value of "id" is saved in a global variable
    And these response keys should have value:
      | name  | Vitalii Kachalo   |
      | email | vitalii@gmail.com |

  Scenario: Get user details with valid user id
    Given a "GET" request is made to "/users/<id>"
    Then the api call should succeed
    And these response keys should have value:
      | name  | Vitalii Kachalo   |
      | email | vitalii@gmail.com |

  Scenario: Update user details with valid user id
    Given a "PUT" request is made to "/users/<id>"
    When these parameters are supplied in body:
      | {"name":"Vitalii Kachalo","email":"vitalii@yahoo.com"} |
    Then the api call should succeed
    And these response keys should have value:
      | name  | Vitalii Kachalo   |
      | email | vitalii@yahoo.com |

  Scenario: Delete user with valid user id
    Given a "DELETE" request is made to "/users/<id>"
    Then the api call should succeed
    And these response keys should have value:
      | Success | User deleted |

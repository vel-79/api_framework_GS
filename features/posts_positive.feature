Feature: Positive scenarios for /posts API

@wipp
  Scenario: Test api
    Given a "POST" request is made to "/tracking/activities"
    When these parameters are supplied in body:
#    |{"env":"qa","id":1779}|
      | {"env":"qa","id":1779,"activity":{"id":null,"user_id":446300,"action":null,"trackable_id":14,"trackable_type":"Video","created_at":null,"updated_at":null,"session_id":152,"route":"/videos/14","client_action":"_PAUSE","client_target":"video","old_value":null,"new_value":null,"slide_id":99,"absolute_time":0,"relative_time":0,"succeeded":true,"parent_id":11936,"client_created_at":"2015-12-15T09:38:50.942-08:00","account_id":5,"g1_id":null,"is_preview":"active","g1_type":null,"video_version_id":35,"focus":true,"state":"published","resource_id":null,"resource_type":null,"resource_title":null,"resource_url":null}} |
    Then the api call should succeed







#  Scenario: Add post as a logged in user
#    Given a "POST" request is made to "/login"
#    When these parameters are supplied in URL:
#      | email    | vitalii@hotmail.com |
#      | password | secret             |
#
#    Then the api call should succeed
#    Given a "POST" request is made to "/posts"
#    When these parameters are supplied in body:
#      | {"content": "test content"} |
#    Then the api call should succeed
#    And value of "id" is saved in a global variable
#    And these response keys should have value:
#      | content | test content |
#
#  Scenario: Get all post for current user
#    Given a "GET" request is made to "/posts/me"
#    Then the api call should succeed
#
#  Scenario: Update post with valid id
#    Given a "PUT" request is made to "/posts/<id>"
#    When these parameters are supplied in body:
#      | {"content": "updated content"} |
#    Then the api call should succeed
#    And these response keys should have value:
#      | content | updated content |
#
#  Scenario: Delete post with valid id
#    Given a "DELETE" request is made to "/posts/<id>"
#    Then the api call should succeed
#    And these response keys should have value:
#      | Success | Post deleted |
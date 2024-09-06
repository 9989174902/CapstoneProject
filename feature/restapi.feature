Feature: API Tests for ReqRes



Scenario: Get all users

Given I have a base URI of "https://reqres.in/"

When I send a GET request to "/api/users"

Then the response status code should be 200



Scenario: Get One User

Given I have a base URI of "https://reqres.in/"

When I send a GET request to "/api/users/2"

Then the response body should contain "Janet"



Scenario Outline: Create Post

Given I have a base URI of "https://reqres.in/"

When I send a POST request to "/api/users" with body as "<RequestBody>"

Then the response time less then 5000



Examples:

| RequestBody |

| { \\"name\\": \\"morpheus\\", \\"job\\": \\"leader\\"} |



Scenario Outline: Update an existing user

Given I have a base URI of "https://reqres.in/"

When I send a PUT request to "/api/users/2" with body as "<RequestBody>"

Then the response status code should be 200



Examples:

| RequestBody |

| { \\"name\\": \\"morpheus\\", \\"job\\": \\"zion resident\\"} |



Scenario Outline: Update specific user

Given I have a base URI of "https://reqres.in/"

When I send a PATCH request to "/api/users/2" with body as "<RequestBody>"

Then the response status code should be 200



Examples:

| RequestBody |

| { \\"name\\": \\"morpheus\\", \\"job\\": \\"zion resident\\"} |



Scenario: Delete a user

Given I have a base URI of "https://reqres.in/"

When I send a DELETE request to "/api/users/2"

Then the response status code should be 204
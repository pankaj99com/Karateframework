Feature: GET API feature

Scenario: get user details
* print tokenId
Given header Authorization = 'Bearer '+ tokenId
Given url baseUrl+'/public/v2/users'
And path '30'
When method GET
Then status 200
* print response
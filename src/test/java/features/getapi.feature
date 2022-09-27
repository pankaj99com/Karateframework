Feature: GET API feature

@Smoke
Scenario: get user details

Given url baseUrl+'/public/v2/users'

And path '30'

When method GET

Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actualName = jsonResponse.name
* def actualID = jsonResponse.id
* def actualEmail = jsonResponse.email
* print actualName
* print actualID
* print actualEmail
* match actualName == 'Subhasini Namboothiri'
* match actualID == 30
* match actualEmail == 'namboothiri_subhasini@walker.io'

Scenario: get user details -user not found

Given url baseUrl+'/public/v2/users'

And path '10008'

When method GET

Then status 404	

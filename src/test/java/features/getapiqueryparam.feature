Feature: GET API with Query Parameter

Scenario: get all active users

* def query = {status:'active', gender: 'male' ,id: 30}

Given url baseUrl+'/public/v1/users'

And params query

When method GET

Then status 200

* print response


Scenario: get all active users

* def query = {status:'active'}

Given url baseUrl+'/public/v1/users'

And params query

When method GET

Then status 200
* def jsonresponse = response
* print jsonresponse
* def usercount = jsonresponse.data.length
* print usercount
* match usercount == 10


Scenario: Adding bearer token

* print tokenId

Given header Authorization = 'Bearer '+tokenId

Given url baseUrl+'/public/v1/users'

And path '2374'

When method GET

Then status 200 
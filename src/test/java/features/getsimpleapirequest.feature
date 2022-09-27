Feature: Get user details

Scenario: Get user details usong GET api call

* def query = {status:'active', gender:'female',id:2415}
Given url baseUrl+'/public/v1/users/' 
And params query

When method GET

Then status 200

* print response

Scenario: Get user details using GET api call
* def query = {gender:'female'}
Given url baseUrl+'/public/v1/users/' 
And params query

When method GET

Then status 200

* def jsonResponse = response

* def userscount = jsonResponse.data.length

* print userscount

* match userscount == 10

Scenario: Get user details usong GET api call
Given header Content-Type = 'application/text'
And header Accept-Encoding = 'PostmanRuntime/7.29.2'
* def query = {status:'active', gender:'female',id:2415}
Given url baseUrl+'/public/v1/users/' 
And params query

When method GET

Then status 200

* print response



Scenario: Get user details usong GET api call
* def req_headers = {Content-Type : 'application/json', Accept-Encoding : 'PostmanRuntime/7.29.2' }
* def query = {status:'active', gender:'female',id:2415}

Given headers req_headers
Given url baseUrl+'/public/v1/users/' 
And params query

When method GET

Then status 200

* print response


Scenario: Get user details usong GET api call
* configure headers = {Content-Type : 'application/json', Accept-Encoding : 'PostmanRuntime/7.29.2' }
* def query = {status:'active', gender:'female',id:2415}

Given url baseUrl+'/public/v1/users/' 
And params query

When method GET

Then status 200

* print response
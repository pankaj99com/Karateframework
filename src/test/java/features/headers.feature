Feature: GET API headers feature

Scenario: pass the user request with headers

Given header Content-Type = 'application/json; charset=utf-8'

Given url baseUrl+'/public/v2/users'

And path '2573'

When method GET

Then status 200
* print response


Scenario: pass the user request with headers_part2
* def request_header = {Content-Type : 'application/json; charset=utf-8'}

Given headers request_header
When url baseUrl+'/public/v2/users'

And path '2573'

When method GET

Then status 200
* print response




Scenario: pass the user request with headers_part3
* configure headers = {Content-Type : 'application/json; charset=utf-8'}


When url baseUrl+'/public/v2/users'

And path '2573'

When method GET

Then status 200
* print response
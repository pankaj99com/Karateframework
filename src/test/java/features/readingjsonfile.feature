Feature: Reading JSON file and passing th epayload


Background:
	* url 'https://gorest.co.in'
	
	* def request_payload1 = read('classpath:src/test/resources/payload/user.json')
Scenario: Create user using POST request from json file

Given path '/public/v1/users'

And request request_payload1

Given header Authorization = 'Bearer '+tokenId

When method POST

Then status 201

And match $.data.id == '#present'
And match $.data.name == '#present'
And match $.data.name == 'Pankaj789'
And match $.data.email == 'pankaj789@gmail.com'
And match $.data.status == 'active'


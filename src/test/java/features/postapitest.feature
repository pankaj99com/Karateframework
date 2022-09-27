Feature: Post request feature

Background:
	* url 'https://gorest.co.in'
	
	* def request_payload =
	
	"""
	
{
    "name": "Pran2",
    "email": "pran2@gmail.com",
    "gender": "female",
    "status": "active"
}
	
	"""
#Create user using POST request
Scenario: Create user using POST request

Given path '/public/v1/users'

And request request_payload

Given header Authorization = 'Bearer '+tokenId

When method POST

Then status 201

And match $.data.id == '#present'
And match $.data.name == '#present'
And match $.data.name == 'Pran2'
And match $.data.email == 'pran2@gmail.com'
And match $.data.status == 'active'


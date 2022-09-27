Feature: Create user using post api

Background:
	* url 'https://gorest.co.in'
	* def requestPayload =
	"""
	{
    "name": "Pank1211",
    "email": "pank019@gmail.com",
    "gender": "male",
    "status": "active"
}
	
	"""
	
	Scenario: Create user with given data
	
	Given path '/public/v1/users'
	And request requestPayload
	And header Authorization = 'Bearer '+tokenId
	When method post
	Then status 201
	And match $.data.id == '#present'
	And match $.data.name == '#present'
	And match $.data.name == 'Pank1211'
	And match $.data.email == 'pank019@gmail.com'
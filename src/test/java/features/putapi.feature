Feature: Update user using put api

Background:
	* url 'https://gorest.co.in'
	* def requestPayload =
	"""
	{
   
    "status": "inactive"
}
	
	"""
	
	Scenario: Update user with given data
	
	Given path '/public/v1/users/2653'
	And request requestPayload
	And header Authorization = 'Bearer '+tokenId
	When method put
	Then status 200
	And match $.data.id == '#present'
	And match $.data.name == '#present'
	And match $.data.name == 'Pank1201'
	And match $.data.email == 'pank009@gmail.com'
Feature: Delete user using post api

Background:
	* url 'https://gorest.co.in'
	* def random_string =
	"""
	function(s){
		var text = "";
		var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		for(var i=0; i<s; i++)
		text=text+pattern.charAt(Math.floor(Math.random() * pattern.length()));
		return text;
	}
	
	
	"""
	* def randomstring = random_string(10)
	* print randomstring
	
	* def requestPayload =
	"""
	{
    "name": "Pankaj129",
    "gender": "male",
    "status": "active"
}

	
	"""
	
	* set requestPayload.email = randomstring +"@gmail.com"
  * print requestPayload
	
	
	Scenario: Create user with given data
	
	Given path '/public/v1/users'
	And request requestPayload
	And header Authorization = 'Bearer '+ tokenId
	When method post
	Then status 201
	And match $.data.id == '#present'


* def userId = $.data.id

* print userId
	
	
	Given path '/public/v1/users/' + userId
	And header Authorization = 'Bearer '+ tokenId
	When method delete
	Then status 204
	
	
	Given url baseUrl+'/public/v1/users/'+ userId
	When method GET
	Then status 404
	
	And match $.data.message == 'Resource not found'

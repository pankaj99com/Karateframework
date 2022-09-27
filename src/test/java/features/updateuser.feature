Feature: Create user using post api

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
    "name": "Panki123",
    "gender": "male",
    "status": "active"
  }
	"""	
	* requestPayload.email = randomstring +"@gmail.com"
  * print requestPayload
	Scenario: Create user with given data	
	Given path '/public/v1/users'
	And request requestPayload
	And header Authorization = 'Bearer '+tokenId
	When method post
	Then status 201
	And match $.data.id == '#present'
# fetch the userid from the post call
* def userId = $.data.id
* print userId
#put call to update user
* def requestPutPayload =
	"""
	{
    
    "gender": "female",
    "status": "inactive"
  }	
	"""
	Given path '/public/v1/users/'+userId
	And request requestPutPayload
	And header Authorization = 'Bearer '+tokenId
	When method put
	Then status 200
	And match $.data.id == userId
	And match $.data.id == '#present'
	And match $.data.name == '#present'
	And match $.data.name == 'Panki123'
	And match $.data.email == requestPayload.email


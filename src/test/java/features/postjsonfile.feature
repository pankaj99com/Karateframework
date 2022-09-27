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

    * def requestPayload = read('classpath:src/test/resources/payload/user.json')

    * set requestPayload.email = randomstring +"@gmail.com"
    * print requestPayload

  Scenario: Create user with given data
    Given path '/public/v1/users'
      And request requestPayload
      And header Authorization = 'Bearer '+tokenId
     When method post
     Then status 201
      And match $.data.id == '#present'
      And match $.data.name == '#present'
      And match $.data.name == 'Pankaj123'
      And match $.data.email == requestPayload.email

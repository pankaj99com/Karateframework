Feature: print hello world feature

Scenario: Hello world scenario

	* print 'Hello world'
	* print 'Hello Pankaj'
	
	
Scenario: declare and print variables
	
	* def balance = 200
	* def fees = 20
	* def tax = 40
	* print 'total amount->' + (balance + fees + tax)
	
	
	Scenario: Calcultaor
	
	* def A = 200
	* def B = 20
	* def C = 40
	* print 'total->' + (A * B * C)
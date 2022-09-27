Feature: json feature testing

Scenario: json reader parser
    
    *def jsonObject=
    """
    
    [
    {
    "name" : "Pankaj",
    "city" : "Bangalore",
    "age"  : 35
    },
    {
    "name" : "Sandeep",
    "city" : "Bangalore",
    "age"  : 30
    },
    {
    "name" : "Vishwa",
    "city" : "Bangalore",
    "age"  : 33
    }
    ]
    """
    karate.log(jsonObject)
    * print jsonObject
    * print jsonObject[1]
    * print jsonObject[1].name
    * print jsonObject[1].name + " " + jsonObject[1].city + " " + jsonObject[1].age

  Scenario: Complex json parser
    
    *def jsonObject=
    """
    {"menu": {
    "id": "file",
    "value": "File",
    "popup": {
    "menuitem": [
    {"value": "New", "onclick": "CreateNewDoc()"},
    {"value": "Open", "onclick": "OpenDoc()"},
    {"value": "Close", "onclick": "CloseDoc()"}
    ]
    }
    }}
    """
    * print jsonObject
    * print jsonObject.menu.id
    * print jsonObject.menu.popup
    * print jsonObject.menu.popup.menuitem
    * print jsonObject.menu.popup.menuitem[0].value
    * print jsonObject.menu.popup.menuitem[0].onclick
    


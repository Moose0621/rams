package com.rams

class User {
    int EID
    char sex
    int zip
    char middleInitial
    Date birthdate
    String state
    String role
    String passWord
    String firstName
    String lastName
    String address
    String city

    
        static constraints = {
    
	    EID(size:9, unique:true, nullable:false)
	    sex(inlist:['M', 'F'])
	    zip(size:5, nullable:false)
	    role(size:3..12)
	    passWord(nullable:false)
	    firstName(nullable:false)
	    lastName()
	    birthdate(nullable:false)
	    city()
	    address()
	    middleInitial()
	    }
}

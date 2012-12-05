package com.rams


class Enrollment {

    // These are things for people enrolled
    String lname
    String fname
    String mi
    String address
    String city
    String state
    String zipcode
    String phoneNumber
    Date birthdate
    Sex sex

    // an enrollment cannot exist without an activity
    static belongsTo = [ activity : Activity ]

    static constraints = {

// these constraints are fairly simple.

// last name
lname(blank:false)

// first name
fname(blank:false)

// middle initial
mi(matches:'[A-Z]{1}',blank:true)

// street address
address(blank:false)

// city
city(blank:false)

// zipcode. five digits because screw zip+4
zipcode(matches:'[0-9]{5}')

// State abbreviaton
state(matches:'[A-Z]{2}')

// phone number, just 10 digits, can be formatted in view
phoneNumber(matches:'[0-9]{10}')

// they were born, at some point
birthdate(nullable:false
//TODO age range logic
// could look something like
)

// a gender
sex(nullable:false)

// somewhere outside checks if the activity is at max enrollment
    }
}

package com.rams

class Facility {

    // Things that define a facility
    String name
    String address
    String city
    String state
    String zipcode
    String phoneNumber

    // This is the activities it has
    static hasMany = [ activities : Activity ]

    static constraints = {

// these constraints are fairly simple.
name(blank:false)

// street address
address(blank:false)

// city
city(blank:false)

// zipcode. five digits because screw zip+4
zipcode(matches:'[0-9]{5}', blank:false)

// State abbreviaton
state(matches:'[A-Z]{2}',blank:false)

// phone number, just 10 digits, can be formatted in view
phoneNumber(matches:'[0-9]{10}',blank:false)

    }
}

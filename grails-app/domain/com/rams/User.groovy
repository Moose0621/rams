package com.rams

class User {

    // These are things for users
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
    Role role
    String eid
    String password

    // Certain things were mentioned as entered the first time the user logs in
    // this field denots the user was recently created
    // setting this to false and any other handling takes place outside
    boolean brandNew

    static constraints = {

	// these constraints are fairly simple.

	// last name
	lname(blank:false)

	// first name
	fname(blank:false)

	// middle initial
	mi(matches:'[A-Z]{1}',blank:true, nullable: true)

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
	birthdate(nullable:true)

	// a gender
	sex(nullable:true)

	// user has a role
	role(nullable:true
		//TODO no removing admin logic
		)

	// employee id. 6 was chosen just because
	eid(matches:'[0-9]{6}')

	/*
	 * We require certain information to be entered on first log in
	 * I left this up to logic guy to implement but I would propose
	 * a general format for the constraint for such an attribute
	 * 
	 * <field>(blank:true,
	 * 		validator {<field>,user ->
	 * 			if (!brandNew){
	 * 				return true
	 * 			} else {
	 * 				if (<field>.equals("") {
	 * 					return false
	 * 				} else {
	 * 					return true
	 * 				}
	 * 			}
	 * 		}
	 * 		)
	 * 
	 * This code (when written properly) should generally allow <field>
	 * to be an empty string (which i think is meant by "blank" but if
	 * the user is not newly created (first time they log in, we must
	 * set brandNew to true in the logic) the field may not be blank
	 */

    }
}

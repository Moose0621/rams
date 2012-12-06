package com.rams

class User {

	transient springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	
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
	//int orgranizationRole
	
	
	
	
	
	
	

	static constraints = {
		username blank: false, unique: true
		password blank: false
		
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
		zipcode(matches:'[0-9]{5}',blank:false)
		
		// State abbreviaton
		state(matches:'[A-Z]{2}',blank:false)
		
		// phone number, just 10 digits, can be formatted in view
		phoneNumber(matches:'[0-9]{10}',blank:false)
		
		// they were born, at some point
		birthdate(nullable:true)
		
		// a gender
		sex(nullable:true)
		
		//organizationRole(nullable:true)
		
		/*
		* We require certain information to be entered on first log in
		* I left this up to logic guy to implement but I would propose
		* a general format for the constraint for such an attribute
		*
		* <field>(blank:true,
		* validator {<field>,user ->
		* if (!brandNew){
		* return true
		* } else {
		* if (<field>.equals("") {
		* return false
		* } else {
		* return true
		* }
		* }
		* }
		* )
		*
		* This code (when written properly) should generally allow <field>
		* to be an empty string (which i think is meant by "blank" but if
		* the user is not newly created (first time they log in, we must
		* set brandNew to true in the logic) the field may not be blank
		*/
		
		
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}
	
//	def afterInsert() {
//		switch (organizationRole) {
//			case 2: UserRole.create(this,Role.findByAuthority('ROLE_ADMINISTRATOR'))
//			case 1: UserRole.create(this,Role.findByAuthority('ROLE_SUPERVISOR'))
//			case 0: UserRole.create(this,Role.findByAuthority('ROLE_STAFF'));
//			break;
//			
//		}
//	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
	
}

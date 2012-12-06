package com.rams;

// this class is used to provide listing of roles and role
// creation and update to be handled in one place.
public enum SecRole {
	
	ADMININISTRATOR {
		def void createRoles(User user) {
			
			UserRole.create(user,Role.findByAuthority("ROLE_ADMIN"));
			
		}
		
		
	},
    SUPERVISOR{
		def void createRoles(User user) {
		
	}
		
	},

	
	STAFF{
		def void createRoles(User user) {
		
	}
	};
	
	
	
	
	
	
	//abstract void createRoles(User user);

}

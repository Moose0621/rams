import com.rams.Role
import com.rams.User
import com.rams.UserRole
import grails.util.Environment

class BootStrap {

	def init = { servletContext ->
		switch (Environment.current) {
			case Environment.DEVELOPMENT:
				//createRoleIfRequired()
				createAdminUserIfRequired()
				break;
			case Environment.PRODUCTION:
				println "No special configuration required"
				break;
		}
	}
	def destroy = {
	}
	
	void createRoleIfRequired() {
		if(!Role.findByAuthority("ROLE_ADMIN")) {
			
		}
	}
	void createAdminUserIfRequired() {

		if (!User.findByUsername("000000")) {
			println "Fresh Database. Creating ADMIN user."
			Role roleAD = new Role(authority: "ROLE_ADMIN")
			Role roleSU = new Role(authority: "ROLE_SUPERVISOR")
			Role roleST = new Role(authority: "ROLE_STAFF")
			roleAD.save()
			roleSU.save()
			roleST.save()
			User user = new User(username: "000000", password: "password", enabled: true, lname: "admin", fname: "an",
					address: "a house", city: "New Orleans", zipcode: "06712",
					state: "LA", phoneNumber: "1234567890")
			println(user.validate())
			user.save()
			User user2 = new User(username: "000001", password: "password", enabled: true, lname: "admin", fname: "not an",
				address: "a house", city: "New Orleans", zipcode: "06712",
				state: "LA", phoneNumber: "1234567890")
		println(user2.validate())
		user2.save()
			UserRole.create user,roleAD
			UserRole.create user,roleSU
			UserRole.create user,roleST

			

			println (user.username +"\t"+ user.password)
		} else {
			println "Existing admin user, skipping creation"
		}

	}
}
	

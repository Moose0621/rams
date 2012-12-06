import com.rams.Role
import com.rams.User
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
			Role role = new Role(authority: "ROLE_ADMIN")
			role.save()
			User user = new User(username: "000000", password: "password", enabled: true)
//					password: authenticateService.encodePassword("password"), lname: "admin", fname: "an",
//					address: "a house", city: "New Orleans", zipcode: "06712",
//					state: "LA", phoneNumber: "1234567890")
			println(user.validate())
			user.save()

			

			println (user.username +"\t"+ user.password)
		} else {
			println "Existing admin user, skipping creation"
		}

	}
}
	

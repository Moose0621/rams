import grails.util.Environment

import java.text.SimpleDateFormat

import com.grailsinaction.*
import com.rams.*

class BootStrap {
    def authenticateService
    def init = { servletContext ->
	switch (Environment.current) {
	    case Environment.DEVELOPMENT:
		createAdminUserIfRequired()
		break;
	    case Environment.PRODUCTION:
		println "No special configuration required"
		break;
	}
    }
    def destroy = {
    }
    void createAdminUserIfRequired() {
	SimpleDateFormat dateFormatter = new SimpleDateFormat()

	if (!User.findByEid("000000")) {
	    println "Fresh Database. Creating ADMIN user."
	    Role role = new Role(authority: "ROLE_ADMIN", description: "A super user.")
	    User user = new User(eid: "000000",
		    password: authenticateService.encodePassword("password"), lname: "admin", fname: "an",
		    address: "a house", city: "New Orleans", zipcode: "06712",
		    state: "LA", phoneNumber: "1234567890")
	    user.save()
	    println (role.validate())
	    role.addToPeople(user)
	    role.save()

	    println (user.eid +"\t"+  user.password)
	} else {
	    println "Existing admin user, skipping creation"
	}
    }
}
package com.rams

class LoginController {

    def checkCreds(String username, String password) {
		if (username != null && password != null)	{
			validateCreds(username, password)
		}
	}
	
	def validateCreds(String username, String password) {
		if (username != null && password != null)	{
			def user = User.findByUserIdAndPassword(username, password)
			if (user) {
				println "Great Success!"
			}
		}
	}
}

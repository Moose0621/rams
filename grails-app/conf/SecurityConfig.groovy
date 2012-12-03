security {

	// see DefaultSecurityConfig.groovy for all settable/overridable properties

	active = true

	loginUserDomainClass = "com.rams.User"
	authorityDomainClass = "com.rams.Role"
	requestMapClass = "Requestmap"
	loginUserDomainClass = "User"
	userName= "eid"
	password = "password"

	useRequestMapDomainClass = false

	requestMapString = """\
	CONVERT_URL_TO_LOWERCASE_BEFORE_COMPARISON
	PATTERN_TYPE_APACHE_ANT
	/=IS_AUTHENTICATED_ANONYMOUSLY
	/login/auth=IS_AUTHENTICATED_ANONYMOUSLY
	/js/**=IS_AUTHENTICATED_ANONYMOUSLY
	/css/**=IS_AUTHENTICATED_ANONYMOUSLY
	/images/**=IS_AUTHENTICATED_ANONYMOUSLY
	/plugins/**=IS_AUTHENTICATED_ANONYMOUSLY
	/**=IS_AUTHENTICATED_FULLY
	/user/**=ROLE_ADMIN
	/role/**=ROLE_ADMIN
	/requestmap/**=ROLE_ADMIN
	"""
	
	loginFormUrl = "/login/auth"
	defaultTargetUrl = "/"
}

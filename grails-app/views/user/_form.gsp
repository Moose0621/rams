<%@ page import="com.rams.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lname', 'error')} required">
	<label for="lname">
		<g:message code="user.lname.label" default="Lname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lname" required="" value="${userInstance?.lname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'fname', 'error')} required">
	<label for="fname">
		<g:message code="user.fname.label" default="Fname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fname" required="" value="${userInstance?.fname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mi', 'error')} ">
	<label for="mi">
		<g:message code="user.mi.label" default="Mi" />
		
	</label>
	<g:textField name="mi" pattern="${userInstance.constraints.mi.matches}" value="${userInstance?.mi}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="user.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${userInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="user.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${userInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'zipcode', 'error')} ">
	<label for="zipcode">
		<g:message code="user.zipcode.label" default="Zipcode" />
		
	</label>
	<g:textField name="zipcode" pattern="${userInstance.constraints.zipcode.matches}" value="${userInstance?.zipcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="user.state.label" default="State" />
		
	</label>
	<g:textField name="state" pattern="${userInstance.constraints.state.matches}" value="${userInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phoneNumber', 'error')} ">
	<label for="phoneNumber">
		<g:message code="user.phoneNumber.label" default="Phone Number" />
		
	</label>
	<g:textField name="phoneNumber" pattern="${userInstance.constraints.phoneNumber.matches}" value="${userInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthdate', 'error')} ">
	<label for="birthdate">
		<g:message code="user.birthdate.label" default="Birthdate" />
		
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${userInstance?.birthdate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'sex', 'error')} ">
	<label for="sex">
		<g:message code="user.sex.label" default="Sex" />
		
	</label>
	<g:select name="sex" from="${com.rams.Sex?.values()}" keys="${com.rams.Sex.values()*.name()}" value="${userInstance?.sex?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
</div>


<%@ page import="com.rams.User" %>



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

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="user.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${userInstance?.birthdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="user.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${com.rams.Sex?.values()}" keys="${com.rams.Sex.values()*.name()}" required="" value="${userInstance?.sex?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="role" from="${com.rams.Role?.values()}" keys="${com.rams.Role.values()*.name()}" required="" value="${userInstance?.role?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'EID', 'error')} ">
	<label for="EID">
		<g:message code="user.EID.label" default="EID" />
		
	</label>
	<g:textField name="EID" pattern="${userInstance.constraints.EID.matches}" value="${userInstance?.EID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'brandNew', 'error')} ">
	<label for="brandNew">
		<g:message code="user.brandNew.label" default="Brand New" />
		
	</label>
	<g:checkBox name="brandNew" value="${userInstance?.brandNew}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${userInstance?.password}"/>
</div>


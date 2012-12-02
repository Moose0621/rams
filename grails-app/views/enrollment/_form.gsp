<%@ page import="com.rams.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'lname', 'error')} required">
	<label for="lname">
		<g:message code="enrollment.lname.label" default="Lname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lname" required="" value="${enrollmentInstance?.lname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'fname', 'error')} required">
	<label for="fname">
		<g:message code="enrollment.fname.label" default="Fname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fname" required="" value="${enrollmentInstance?.fname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'mi', 'error')} ">
	<label for="mi">
		<g:message code="enrollment.mi.label" default="Mi" />
		
	</label>
	<g:textField name="mi" pattern="${enrollmentInstance.constraints.mi.matches}" value="${enrollmentInstance?.mi}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="enrollment.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${enrollmentInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="enrollment.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${enrollmentInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'zipcode', 'error')} ">
	<label for="zipcode">
		<g:message code="enrollment.zipcode.label" default="Zipcode" />
		
	</label>
	<g:textField name="zipcode" pattern="${enrollmentInstance.constraints.zipcode.matches}" value="${enrollmentInstance?.zipcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="enrollment.state.label" default="State" />
		
	</label>
	<g:textField name="state" pattern="${enrollmentInstance.constraints.state.matches}" value="${enrollmentInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'phoneNumber', 'error')} ">
	<label for="phoneNumber">
		<g:message code="enrollment.phoneNumber.label" default="Phone Number" />
		
	</label>
	<g:textField name="phoneNumber" pattern="${enrollmentInstance.constraints.phoneNumber.matches}" value="${enrollmentInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="enrollment.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${enrollmentInstance?.birthdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="enrollment.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${com.rams.Sex?.values()}" keys="${com.rams.Sex.values()*.name()}" required="" value="${enrollmentInstance?.sex?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'activity', 'error')} required">
	<label for="activity">
		<g:message code="enrollment.activity.label" default="Activity" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="activity" name="activity.id" from="${com.rams.Activity.list()}" optionKey="id" required="" value="${enrollmentInstance?.activity?.id}" class="many-to-one"/>
</div>


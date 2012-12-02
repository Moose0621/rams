<%@ page import="com.rams.Facility" %>



<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="facility.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${facilityInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="facility.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${facilityInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="facility.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${facilityInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'zipcode', 'error')} ">
	<label for="zipcode">
		<g:message code="facility.zipcode.label" default="Zipcode" />
		
	</label>
	<g:textField name="zipcode" pattern="${facilityInstance.constraints.zipcode.matches}" value="${facilityInstance?.zipcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="facility.state.label" default="State" />
		
	</label>
	<g:textField name="state" pattern="${facilityInstance.constraints.state.matches}" value="${facilityInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'phoneNumber', 'error')} ">
	<label for="phoneNumber">
		<g:message code="facility.phoneNumber.label" default="Phone Number" />
		
	</label>
	<g:textField name="phoneNumber" pattern="${facilityInstance.constraints.phoneNumber.matches}" value="${facilityInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'activities', 'error')} ">
	<label for="activities">
		<g:message code="facility.activities.label" default="Activities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.activities?}" var="a">
    <li><g:link controller="activity" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="activity" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'activity.label', default: 'Activity')])}</g:link>
</li>
</ul>

</div>


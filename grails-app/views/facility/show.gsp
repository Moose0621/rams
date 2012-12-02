
<%@ page import="com.rams.Facility" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'facility.label', default: 'Facility')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-facility" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-facility" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list facility">
			
				<g:if test="${facilityInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="facility.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${facilityInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="facility.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${facilityInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="facility.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${facilityInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.zipcode}">
				<li class="fieldcontain">
					<span id="zipcode-label" class="property-label"><g:message code="facility.zipcode.label" default="Zipcode" /></span>
					
						<span class="property-value" aria-labelledby="zipcode-label"><g:fieldValue bean="${facilityInstance}" field="zipcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="facility.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${facilityInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="facility.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${facilityInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.activities}">
				<li class="fieldcontain">
					<span id="activities-label" class="property-label"><g:message code="facility.activities.label" default="Activities" /></span>
					
						<g:each in="${facilityInstance.activities}" var="a">
						<span class="property-value" aria-labelledby="activities-label"><g:link controller="activity" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${facilityInstance?.id}" />
					<g:link class="edit" action="edit" id="${facilityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

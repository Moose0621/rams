
<%@ page import="com.rams.Enrollment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enrollment.label', default: 'Enrollment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-enrollment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-enrollment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list enrollment">
			
				<g:if test="${enrollmentInstance?.lname}">
				<li class="fieldcontain">
					<span id="lname-label" class="property-label"><g:message code="enrollment.lname.label" default="Lname" /></span>
					
						<span class="property-value" aria-labelledby="lname-label"><g:fieldValue bean="${enrollmentInstance}" field="lname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.fname}">
				<li class="fieldcontain">
					<span id="fname-label" class="property-label"><g:message code="enrollment.fname.label" default="Fname" /></span>
					
						<span class="property-value" aria-labelledby="fname-label"><g:fieldValue bean="${enrollmentInstance}" field="fname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.mi}">
				<li class="fieldcontain">
					<span id="mi-label" class="property-label"><g:message code="enrollment.mi.label" default="Mi" /></span>
					
						<span class="property-value" aria-labelledby="mi-label"><g:fieldValue bean="${enrollmentInstance}" field="mi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="enrollment.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${enrollmentInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="enrollment.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${enrollmentInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.zipcode}">
				<li class="fieldcontain">
					<span id="zipcode-label" class="property-label"><g:message code="enrollment.zipcode.label" default="Zipcode" /></span>
					
						<span class="property-value" aria-labelledby="zipcode-label"><g:fieldValue bean="${enrollmentInstance}" field="zipcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="enrollment.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${enrollmentInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="enrollment.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${enrollmentInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.birthdate}">
				<li class="fieldcontain">
					<span id="birthdate-label" class="property-label"><g:message code="enrollment.birthdate.label" default="Birthdate" /></span>
					
						<span class="property-value" aria-labelledby="birthdate-label"><g:formatDate date="${enrollmentInstance?.birthdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="enrollment.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${enrollmentInstance}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.activity}">
				<li class="fieldcontain">
					<span id="activity-label" class="property-label"><g:message code="enrollment.activity.label" default="Activity" /></span>
					
						<span class="property-value" aria-labelledby="activity-label"><g:link controller="activity" action="show" id="${enrollmentInstance?.activity?.id}">${enrollmentInstance?.activity?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${enrollmentInstance?.id}" />
					<g:link class="edit" action="edit" id="${enrollmentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="com.rams.Activity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'activity.label', default: 'Activity')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-activity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-activity" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list activity">
			
				<g:if test="${activityInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="activity.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${activityInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="activity.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${activityInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="activity.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${activityInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityInstance?.startTime}">
				<li class="fieldcontain">
					<span id="startTime-label" class="property-label"><g:message code="activity.startTime.label" default="Start Time" /></span>
					
						<span class="property-value" aria-labelledby="startTime-label"><g:formatDate date="${activityInstance?.startTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityInstance?.endTime}">
				<li class="fieldcontain">
					<span id="endTime-label" class="property-label"><g:message code="activity.endTime.label" default="End Time" /></span>
					
						<span class="property-value" aria-labelledby="endTime-label"><g:formatDate date="${activityInstance?.endTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityInstance?.maxEnrollment}">
				<li class="fieldcontain">
					<span id="maxEnrollment-label" class="property-label"><g:message code="activity.maxEnrollment.label" default="Max Enrollment" /></span>
					
						<span class="property-value" aria-labelledby="maxEnrollment-label"><g:fieldValue bean="${activityInstance}" field="maxEnrollment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityInstance?.minAge}">
				<li class="fieldcontain">
					<span id="minAge-label" class="property-label"><g:message code="activity.minAge.label" default="Min Age" /></span>
					
						<span class="property-value" aria-labelledby="minAge-label"><g:fieldValue bean="${activityInstance}" field="minAge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityInstance?.maxAge}">
				<li class="fieldcontain">
					<span id="maxAge-label" class="property-label"><g:message code="activity.maxAge.label" default="Max Age" /></span>
					
						<span class="property-value" aria-labelledby="maxAge-label"><g:fieldValue bean="${activityInstance}" field="maxAge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityInstance?.enrollments}">
				<li class="fieldcontain">
					<span id="enrollments-label" class="property-label"><g:message code="activity.enrollments.label" default="Enrollments" /></span>
					
						<g:each in="${activityInstance.enrollments}" var="e">
						<span class="property-value" aria-labelledby="enrollments-label"><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${activityInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="activity.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${activityInstance?.facility?.id}">${activityInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${activityInstance?.id}" />
					<g:link class="edit" action="edit" id="${activityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

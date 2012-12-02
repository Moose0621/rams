
<%@ page import="com.rams.Enrollment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enrollment.label', default: 'Enrollment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-enrollment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-enrollment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="lname" title="${message(code: 'enrollment.lname.label', default: 'Lname')}" />
					
						<g:sortableColumn property="fname" title="${message(code: 'enrollment.fname.label', default: 'Fname')}" />
					
						<g:sortableColumn property="mi" title="${message(code: 'enrollment.mi.label', default: 'Mi')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'enrollment.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'enrollment.city.label', default: 'City')}" />
					
						<g:sortableColumn property="zipcode" title="${message(code: 'enrollment.zipcode.label', default: 'Zipcode')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${enrollmentInstanceList}" status="i" var="enrollmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${enrollmentInstance.id}">${fieldValue(bean: enrollmentInstance, field: "lname")}</g:link></td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "fname")}</td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "mi")}</td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "zipcode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${enrollmentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

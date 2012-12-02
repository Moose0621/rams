
<%@ page import="com.rams.Facility" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'facility.label', default: 'Facility')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-facility" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-facility" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'facility.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'facility.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'facility.city.label', default: 'City')}" />
					
						<g:sortableColumn property="zipcode" title="${message(code: 'facility.zipcode.label', default: 'Zipcode')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'facility.state.label', default: 'State')}" />
					
						<g:sortableColumn property="phoneNumber" title="${message(code: 'facility.phoneNumber.label', default: 'Phone Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${facilityInstanceList}" status="i" var="facilityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${facilityInstance.id}">${fieldValue(bean: facilityInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: facilityInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: facilityInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: facilityInstance, field: "zipcode")}</td>
					
						<td>${fieldValue(bean: facilityInstance, field: "state")}</td>
					
						<td>${fieldValue(bean: facilityInstance, field: "phoneNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${facilityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

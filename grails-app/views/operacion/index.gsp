
<%@ page import="pma.Operacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'operacion.label', default: 'Operacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-operacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-operacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="operacion" title="${message(code: 'operacion.operacion.label', default: 'Operacion')}" />
					
						<g:sortableColumn property="estadoOperacion" title="${message(code: 'operacion.estadoOperacion.label', default: 'Estado Operacion')}" />
					
						<th><g:message code="operacion.opcion.label" default="Opcion" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${operacionInstanceList}" status="i" var="operacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${operacionInstance.id}">${fieldValue(bean: operacionInstance, field: "operacion")}</g:link></td>
					
						<td>${fieldValue(bean: operacionInstance, field: "estadoOperacion")}</td>
					
						<td>${fieldValue(bean: operacionInstance, field: "opcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${operacionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

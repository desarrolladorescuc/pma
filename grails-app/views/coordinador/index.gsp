
<%@ page import="pma.Coordinador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'coordinador.label', default: 'Coordinador')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-coordinador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-coordinador" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'coordinador.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'coordinador.cedula.label', default: 'Cedula')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'coordinador.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'coordinador.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="idEstadoCoordinador" title="${message(code: 'coordinador.idEstadoCoordinador.label', default: 'Id Estado Coordinador')}" />
					
						<th><g:message code="coordinador.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${coordinadorInstanceList}" status="i" var="coordinadorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${coordinadorInstance.id}">${fieldValue(bean: coordinadorInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: coordinadorInstance, field: "cedula")}</td>
					
						<td>${fieldValue(bean: coordinadorInstance, field: "telefono")}</td>
					
						<td>${fieldValue(bean: coordinadorInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: coordinadorInstance, field: "idEstadoCoordinador")}</td>
					
						<td>${fieldValue(bean: coordinadorInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${coordinadorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

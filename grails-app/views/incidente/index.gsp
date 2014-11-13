
<%@ page import="pma.Incidente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'incidente.label', default: 'Incidente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-incidente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-incidente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="registro" title="${message(code: 'incidente.registro.label', default: 'Registro')}" />
					
						<g:sortableColumn property="descripUsuario" title="${message(code: 'incidente.descripUsuario.label', default: 'Descrip Usuario')}" />
					
						<g:sortableColumn property="idTipoIncidente" title="${message(code: 'incidente.idTipoIncidente.label', default: 'Id Tipo Incidente')}" />
					
						<g:sortableColumn property="idCategoriaIncidente" title="${message(code: 'incidente.idCategoriaIncidente.label', default: 'Id Categoria Incidente')}" />
					
						<g:sortableColumn property="estadoIncidente" title="${message(code: 'incidente.estadoIncidente.label', default: 'Estado Incidente')}" />
					
						<g:sortableColumn property="idPrioridadIncidente" title="${message(code: 'incidente.idPrioridadIncidente.label', default: 'Id Prioridad Incidente')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${incidenteInstanceList}" status="i" var="incidenteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${incidenteInstance.id}">${fieldValue(bean: incidenteInstance, field: "registro")}</g:link></td>
					
						<td>${fieldValue(bean: incidenteInstance, field: "descripUsuario")}</td>
					
						<td>${fieldValue(bean: incidenteInstance, field: "idTipoIncidente")}</td>
					
						<td>${fieldValue(bean: incidenteInstance, field: "idCategoriaIncidente")}</td>
					
						<td>${fieldValue(bean: incidenteInstance, field: "estadoIncidente")}</td>
					
						<td>${fieldValue(bean: incidenteInstance, field: "idPrioridadIncidente")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${incidenteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

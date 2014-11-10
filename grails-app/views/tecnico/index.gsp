
<%@ page import="pma.Tecnico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tecnico.label', default: 'Tecnico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tecnico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tecnico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'tecnico.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'tecnico.cedula.label', default: 'Cedula')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'tecnico.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'tecnico.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="idEstadoTecnico" title="${message(code: 'tecnico.idEstadoTecnico.label', default: 'Id Estado Tecnico')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tecnicoInstanceList}" status="i" var="tecnicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tecnicoInstance.id}">${fieldValue(bean: tecnicoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: tecnicoInstance, field: "cedula")}</td>
					
						<td>${fieldValue(bean: tecnicoInstance, field: "telefono")}</td>
					
						<td>${fieldValue(bean: tecnicoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: tecnicoInstance, field: "idEstadoTecnico")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tecnicoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

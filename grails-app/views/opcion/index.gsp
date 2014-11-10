
<%@ page import="pma.Opcion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opcion.label', default: 'Opcion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-opcion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-opcion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="opcion" title="${message(code: 'opcion.opcion.label', default: 'Opcion')}" />
					
						<g:sortableColumn property="idPadre" title="${message(code: 'opcion.idPadre.label', default: 'Id Padre')}" />
					
						<g:sortableColumn property="tipoOpcion" title="${message(code: 'opcion.tipoOpcion.label', default: 'Tipo Opcion')}" />
					
						<g:sortableColumn property="orden" title="${message(code: 'opcion.orden.label', default: 'Orden')}" />
					
						<g:sortableColumn property="controlador" title="${message(code: 'opcion.controlador.label', default: 'Controlador')}" />
					
						<g:sortableColumn property="claseCss" title="${message(code: 'opcion.claseCss.label', default: 'Clase Css')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${opcionInstanceList}" status="i" var="opcionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${opcionInstance.id}">${fieldValue(bean: opcionInstance, field: "opcion")}</g:link></td>
					
						<td>${fieldValue(bean: opcionInstance, field: "idPadre")}</td>
					
						<td>${fieldValue(bean: opcionInstance, field: "tipoOpcion")}</td>
					
						<td>${fieldValue(bean: opcionInstance, field: "orden")}</td>
					
						<td>${fieldValue(bean: opcionInstance, field: "controlador")}</td>
					
						<td>${fieldValue(bean: opcionInstance, field: "claseCss")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${opcionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

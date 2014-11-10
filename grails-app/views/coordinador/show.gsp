
<%@ page import="pma.Coordinador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'coordinador.label', default: 'Coordinador')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-coordinador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-coordinador" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list coordinador">
			
				<g:if test="${coordinadorInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="coordinador.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${coordinadorInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordinadorInstance?.cedula}">
				<li class="fieldcontain">
					<span id="cedula-label" class="property-label"><g:message code="coordinador.cedula.label" default="Cedula" /></span>
					
						<span class="property-value" aria-labelledby="cedula-label"><g:fieldValue bean="${coordinadorInstance}" field="cedula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordinadorInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="coordinador.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${coordinadorInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordinadorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="coordinador.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${coordinadorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordinadorInstance?.idEstadoCoordinador}">
				<li class="fieldcontain">
					<span id="idEstadoCoordinador-label" class="property-label"><g:message code="coordinador.idEstadoCoordinador.label" default="Id Estado Coordinador" /></span>
					
						<span class="property-value" aria-labelledby="idEstadoCoordinador-label"><g:fieldValue bean="${coordinadorInstance}" field="idEstadoCoordinador"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:coordinadorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${coordinadorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

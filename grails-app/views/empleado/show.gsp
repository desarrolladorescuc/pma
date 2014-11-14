
<%@ page import="pma.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empleado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empleado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empleado">
			
				<g:if test="${empleadoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="empleado.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${empleadoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.cedula}">
				<li class="fieldcontain">
					<span id="cedula-label" class="property-label"><g:message code="empleado.cedula.label" default="Cedula" /></span>
					
						<span class="property-value" aria-labelledby="cedula-label"><g:fieldValue bean="${empleadoInstance}" field="cedula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="empleado.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empleadoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="empleado.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${empleadoInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.estadoEmpleado}">
				<li class="fieldcontain">
					<span id="estadoEmpleado-label" class="property-label"><g:message code="empleado.estadoEmpleado.label" default="Estado Empleado" /></span>
					
						<span class="property-value" aria-labelledby="estadoEmpleado-label"><g:fieldValue bean="${empleadoInstance}" field="estadoEmpleado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.incidentes}">
				<li class="fieldcontain">
					<span id="incidentes-label" class="property-label"><g:message code="empleado.incidentes.label" default="Incidentes" /></span>
					
						<g:each in="${empleadoInstance.incidentes}" var="i">
						<span class="property-value" aria-labelledby="incidentes-label"><g:link controller="incidente" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="empleado.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${empleadoInstance?.usuario?.id}">${empleadoInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:empleadoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${empleadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

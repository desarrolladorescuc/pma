
<%@ page import="pma.Tecnico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tecnico.label', default: 'Tecnico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tecnico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tecnico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tecnico">
			
				<g:if test="${tecnicoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="tecnico.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${tecnicoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tecnicoInstance?.cedula}">
				<li class="fieldcontain">
					<span id="cedula-label" class="property-label"><g:message code="tecnico.cedula.label" default="Cedula" /></span>
					
						<span class="property-value" aria-labelledby="cedula-label"><g:fieldValue bean="${tecnicoInstance}" field="cedula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tecnicoInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="tecnico.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${tecnicoInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tecnicoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="tecnico.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${tecnicoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tecnicoInstance?.idEstadoTecnico}">
				<li class="fieldcontain">
					<span id="idEstadoTecnico-label" class="property-label"><g:message code="tecnico.idEstadoTecnico.label" default="Id Estado Tecnico" /></span>
					
						<span class="property-value" aria-labelledby="idEstadoTecnico-label"><g:fieldValue bean="${tecnicoInstance}" field="idEstadoTecnico"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tecnicoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tecnicoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

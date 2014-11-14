
<%@ page import="pma.Opcion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opcion.label', default: 'Opcion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-opcion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-opcion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list opcion">
			
				<g:if test="${opcionInstance?.opcion}">
				<li class="fieldcontain">
					<span id="opcion-label" class="property-label"><g:message code="opcion.opcion.label" default="Opcion" /></span>
					
						<span class="property-value" aria-labelledby="opcion-label"><g:fieldValue bean="${opcionInstance}" field="opcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.controlador}">
				<li class="fieldcontain">
					<span id="controlador-label" class="property-label"><g:message code="opcion.controlador.label" default="Controlador" /></span>
					
						<span class="property-value" aria-labelledby="controlador-label"><g:fieldValue bean="${opcionInstance}" field="controlador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.claseCss}">
				<li class="fieldcontain">
					<span id="claseCss-label" class="property-label"><g:message code="opcion.claseCss.label" default="Clase Css" /></span>
					
						<span class="property-value" aria-labelledby="claseCss-label"><g:fieldValue bean="${opcionInstance}" field="claseCss"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="opcion.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${opcionInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.estadoOpcion}">
				<li class="fieldcontain">
					<span id="estadoOpcion-label" class="property-label"><g:message code="opcion.estadoOpcion.label" default="Estado Opcion" /></span>
					
						<span class="property-value" aria-labelledby="estadoOpcion-label"><g:fieldValue bean="${opcionInstance}" field="estadoOpcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.tipoOpcion}">
				<li class="fieldcontain">
					<span id="tipoOpcion-label" class="property-label"><g:message code="opcion.tipoOpcion.label" default="Tipo Opcion" /></span>
					
						<span class="property-value" aria-labelledby="tipoOpcion-label"><g:fieldValue bean="${opcionInstance}" field="tipoOpcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.operacion}">
				<li class="fieldcontain">
					<span id="operacion-label" class="property-label"><g:message code="opcion.operacion.label" default="Operacion" /></span>
					
						<g:each in="${opcionInstance.operacion}" var="o">
						<span class="property-value" aria-labelledby="operacion-label"><g:link controller="operacion" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.rol}">
				<li class="fieldcontain">
					<span id="rol-label" class="property-label"><g:message code="opcion.rol.label" default="Rol" /></span>
					
						<span class="property-value" aria-labelledby="rol-label"><g:link controller="rol" action="show" id="${opcionInstance?.rol?.id}">${opcionInstance?.rol?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:opcionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${opcionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

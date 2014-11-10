
<%@ page import="pma.Rol" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rol.label', default: 'Rol')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rol" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rol" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rol">
			
				<g:if test="${rolInstance?.rol}">
				<li class="fieldcontain">
					<span id="rol-label" class="property-label"><g:message code="rol.rol.label" default="Rol" /></span>
					
						<span class="property-value" aria-labelledby="rol-label"><g:fieldValue bean="${rolInstance}" field="rol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolInstance?.estadoRol}">
				<li class="fieldcontain">
					<span id="estadoRol-label" class="property-label"><g:message code="rol.estadoRol.label" default="Estado Rol" /></span>
					
						<span class="property-value" aria-labelledby="estadoRol-label"><g:fieldValue bean="${rolInstance}" field="estadoRol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolInstance?.opcion}">
				<li class="fieldcontain">
					<span id="opcion-label" class="property-label"><g:message code="rol.opcion.label" default="Opcion" /></span>
					
						<g:each in="${rolInstance.opcion}" var="o">
						<span class="property-value" aria-labelledby="opcion-label"><g:link controller="opcion" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${rolInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="rol.usuario.label" default="Usuario" /></span>
					
						<g:each in="${rolInstance.usuario}" var="u">
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rolInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rolInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

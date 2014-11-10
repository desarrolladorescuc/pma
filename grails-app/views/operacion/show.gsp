
<%@ page import="pma.Operacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'operacion.label', default: 'Operacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-operacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-operacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list operacion">
			
				<g:if test="${operacionInstance?.operacion}">
				<li class="fieldcontain">
					<span id="operacion-label" class="property-label"><g:message code="operacion.operacion.label" default="Operacion" /></span>
					
						<span class="property-value" aria-labelledby="operacion-label"><g:fieldValue bean="${operacionInstance}" field="operacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operacionInstance?.estadoOperacion}">
				<li class="fieldcontain">
					<span id="estadoOperacion-label" class="property-label"><g:message code="operacion.estadoOperacion.label" default="Estado Operacion" /></span>
					
						<span class="property-value" aria-labelledby="estadoOperacion-label"><g:fieldValue bean="${operacionInstance}" field="estadoOperacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operacionInstance?.opcion}">
				<li class="fieldcontain">
					<span id="opcion-label" class="property-label"><g:message code="operacion.opcion.label" default="Opcion" /></span>
					
						<span class="property-value" aria-labelledby="opcion-label"><g:link controller="opcion" action="show" id="${operacionInstance?.opcion?.id}">${operacionInstance?.opcion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:operacionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${operacionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

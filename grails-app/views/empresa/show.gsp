
<%@ page import="pma.Empresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empresa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empresa">
			
				<g:if test="${empresaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="empresa.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${empresaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.nit}">
				<li class="fieldcontain">
					<span id="nit-label" class="property-label"><g:message code="empresa.nit.label" default="Nit" /></span>
					
						<span class="property-value" aria-labelledby="nit-label"><g:fieldValue bean="${empresaInstance}" field="nit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.estadoEmpresa}">
				<li class="fieldcontain">
					<span id="estadoEmpresa-label" class="property-label"><g:message code="empresa.estadoEmpresa.label" default="Estado Empresa" /></span>
					
						<span class="property-value" aria-labelledby="estadoEmpresa-label"><g:fieldValue bean="${empresaInstance}" field="estadoEmpresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.cliente}">
				<li class="fieldcontain">
					<span id="cliente-label" class="property-label"><g:message code="empresa.cliente.label" default="Cliente" /></span>
					
						<g:each in="${empresaInstance.cliente}" var="c">
						<span class="property-value" aria-labelledby="cliente-label"><g:link controller="cliente" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:empresaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${empresaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="pma.Incidente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'incidente.label', default: 'Incidente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-incidente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-incidente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list incidente">
			
				<g:if test="${incidenteInstance?.descripUsuario}">
				<li class="fieldcontain">
					<span id="descripUsuario-label" class="property-label"><g:message code="incidente.descripUsuario.label" default="Descrip Usuario" /></span>
					
						<span class="property-value" aria-labelledby="descripUsuario-label"><g:fieldValue bean="${incidenteInstance}" field="descripUsuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.descripTecnica}">
				<li class="fieldcontain">
					<span id="descripTecnica-label" class="property-label"><g:message code="incidente.descripTecnica.label" default="Descrip Tecnica" /></span>
					
						<span class="property-value" aria-labelledby="descripTecnica-label"><g:fieldValue bean="${incidenteInstance}" field="descripTecnica"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.solucionDada}">
				<li class="fieldcontain">
					<span id="solucionDada-label" class="property-label"><g:message code="incidente.solucionDada.label" default="Solucion Dada" /></span>
					
						<span class="property-value" aria-labelledby="solucionDada-label"><g:fieldValue bean="${incidenteInstance}" field="solucionDada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.idTipoIncidente}">
				<li class="fieldcontain">
					<span id="idTipoIncidente-label" class="property-label"><g:message code="incidente.idTipoIncidente.label" default="Id Tipo Incidente" /></span>
					
						<span class="property-value" aria-labelledby="idTipoIncidente-label"><g:fieldValue bean="${incidenteInstance}" field="idTipoIncidente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.idCategoriaIncidente}">
				<li class="fieldcontain">
					<span id="idCategoriaIncidente-label" class="property-label"><g:message code="incidente.idCategoriaIncidente.label" default="Id Categoria Incidente" /></span>
					
						<span class="property-value" aria-labelledby="idCategoriaIncidente-label"><g:fieldValue bean="${incidenteInstance}" field="idCategoriaIncidente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.idEstadoIncidente}">
				<li class="fieldcontain">
					<span id="idEstadoIncidente-label" class="property-label"><g:message code="incidente.idEstadoIncidente.label" default="Id Estado Incidente" /></span>
					
						<span class="property-value" aria-labelledby="idEstadoIncidente-label"><g:fieldValue bean="${incidenteInstance}" field="idEstadoIncidente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.idPrioridadIncidente}">
				<li class="fieldcontain">
					<span id="idPrioridadIncidente-label" class="property-label"><g:message code="incidente.idPrioridadIncidente.label" default="Id Prioridad Incidente" /></span>
					
						<span class="property-value" aria-labelledby="idPrioridadIncidente-label"><g:fieldValue bean="${incidenteInstance}" field="idPrioridadIncidente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.cliente}">
				<li class="fieldcontain">
					<span id="cliente-label" class="property-label"><g:message code="incidente.cliente.label" default="Cliente" /></span>
					
						<span class="property-value" aria-labelledby="cliente-label"><g:link controller="cliente" action="show" id="${incidenteInstance?.cliente?.id}">${incidenteInstance?.cliente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.registro}">
				<li class="fieldcontain">
					<span id="registro-label" class="property-label"><g:message code="incidente.registro.label" default="Registro" /></span>
					
						<span class="property-value" aria-labelledby="registro-label"><g:formatDate date="${incidenteInstance?.registro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.solucion}">
				<li class="fieldcontain">
					<span id="solucion-label" class="property-label"><g:message code="incidente.solucion.label" default="Solucion" /></span>
					
						<span class="property-value" aria-labelledby="solucion-label"><g:formatDate date="${incidenteInstance?.solucion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${incidenteInstance?.tecnico}">
				<li class="fieldcontain">
					<span id="tecnico-label" class="property-label"><g:message code="incidente.tecnico.label" default="Tecnico" /></span>
					
						<span class="property-value" aria-labelledby="tecnico-label"><g:link controller="tecnico" action="show" id="${incidenteInstance?.tecnico?.id}">${incidenteInstance?.tecnico?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:incidenteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${incidenteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

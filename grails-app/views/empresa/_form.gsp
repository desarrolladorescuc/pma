<%@ page import="pma.Empresa" %>



<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empresa.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${empresaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'nit', 'error')} required">
	<label for="nit">
		<g:message code="empresa.nit.label" default="Nit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nit" required="" value="${empresaInstance?.nit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'estadoEmpresa', 'error')} required">
	<label for="estadoEmpresa">
		<g:message code="empresa.estadoEmpresa.label" default="Estado Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoEmpresa" from="${empresaInstance.constraints.estadoEmpresa.inList}" required="" value="${empresaInstance?.estadoEmpresa}" valueMessagePrefix="empresa.estadoEmpresa"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'cliente', 'error')} ">
	<label for="cliente">
		<g:message code="empresa.cliente.label" default="Cliente" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empresaInstance?.cliente?}" var="c">
    <li><g:link controller="cliente" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cliente" action="create" params="['empresa.id': empresaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cliente.label', default: 'Cliente')])}</g:link>
</li>
</ul>


</div>


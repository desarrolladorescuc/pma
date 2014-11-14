<%@ page import="pma.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="cliente.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="100" required="" value="${clienteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="cliente.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cedula" maxlength="20" required="" value="${clienteInstance?.cedula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="120" required="" value="${clienteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="cliente.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" maxlength="20" value="${clienteInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cargo', 'error')} ">
	<label for="cargo">
		<g:message code="cliente.cargo.label" default="Cargo" />
		
	</label>
	<g:textField name="cargo" maxlength="40" value="${clienteInstance?.cargo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'area', 'error')} ">
	<label for="area">
		<g:message code="cliente.area.label" default="Area" />
		
	</label>
	<g:textField name="area" maxlength="20" value="${clienteInstance?.area}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'estadoCliente', 'error')} required">
	<label for="estadoCliente">
		<g:message code="cliente.estadoCliente.label" default="Estado Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCliente" from="${clienteInstance.constraints.estadoCliente.inList}" required="" value="${clienteInstance?.estadoCliente}" valueMessagePrefix="cliente.estadoCliente"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'usuario', 'error')} ">
	<label for="usuario">
		<g:message code="cliente.usuario.label" default="Usuario" />
		
	</label>
	<g:select id="usuario" name="usuario.id" from="${pma.Usuario.list()}" optionKey="id" value="${clienteInstance?.usuario?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="cliente.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${pma.Empresa.list()}" optionKey="id" required="" value="${clienteInstance?.empresa?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'incidentes', 'error')} ">
	<label for="incidentes">
		<g:message code="cliente.incidentes.label" default="Incidentes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clienteInstance?.incidentes?}" var="i">
    <li><g:link controller="incidente" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="incidente" action="create" params="['cliente.id': clienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'incidente.label', default: 'Incidente')])}</g:link>
</li>
</ul>


</div>


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

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="cliente.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" maxlength="20" required="" value="${clienteInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="30" required="" value="${clienteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="cliente.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cargo" maxlength="30" required="" value="${clienteInstance?.cargo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="cliente.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="area" maxlength="100" required="" value="${clienteInstance?.area}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'idEstadoCliente', 'error')} ">
	<label for="idEstadoCliente">
		<g:message code="cliente.idEstadoCliente.label" default="Id Estado Cliente" />
		
	</label>
	<g:field name="idEstadoCliente" type="number" value="${clienteInstance.idEstadoCliente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="cliente.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${pma.Empresa.list()}" optionKey="id" required="" value="${clienteInstance?.empresa?.id}" class="many-to-one"/>

</div>


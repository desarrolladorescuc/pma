<%@ page import="pma.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empleado.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="100" required="" value="${empleadoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="empleado.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cedula" maxlength="20" required="" value="${empleadoInstance?.cedula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="empleado.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" maxlength="20" required="" value="${empleadoInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="empleado.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="30" required="" value="${empleadoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'estadoEmpleado', 'error')} required">
	<label for="estadoEmpleado">
		<g:message code="empleado.estadoEmpleado.label" default="Estado Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoEmpleado" from="${empleadoInstance.constraints.estadoEmpleado.inList}" required="" value="${empleadoInstance?.estadoEmpleado}" valueMessagePrefix="empleado.estadoEmpleado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'usuario', 'error')} ">
	<label for="usuario">
		<g:message code="empleado.usuario.label" default="Usuario" />
		
	</label>
	<g:select id="usuario" name="usuario.id" from="${pma.Usuario.list()}" optionKey="id" value="${empleadoInstance?.usuario?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>


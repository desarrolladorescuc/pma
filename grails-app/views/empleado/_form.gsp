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

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="empleado.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="30" required="" value="${empleadoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="empleado.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" maxlength="20" value="${empleadoInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'estadoEmpleado', 'error')} required">
	<label for="estadoEmpleado">
		<g:message code="empleado.estadoEmpleado.label" default="Estado Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoEmpleado" from="${empleadoInstance.constraints.estadoEmpleado.inList}" required="" value="${empleadoInstance?.estadoEmpleado}" valueMessagePrefix="empleado.estadoEmpleado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'incidentes', 'error')} ">
	<label for="incidentes">
		<g:message code="empleado.incidentes.label" default="Incidentes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empleadoInstance?.incidentes?}" var="i">
    <li><g:link controller="incidente" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="incidente" action="create" params="['empleado.id': empleadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'incidente.label', default: 'Incidente')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="empleado.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${pma.Usuario.list()}" optionKey="id" required="" value="${empleadoInstance?.usuario?.id}" class="many-to-one"/>

</div>


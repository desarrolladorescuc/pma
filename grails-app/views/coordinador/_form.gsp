<%@ page import="pma.Coordinador" %>



<div class="fieldcontain ${hasErrors(bean: coordinadorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="coordinador.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="100" required="" value="${coordinadorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="coordinador.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cedula" maxlength="20" required="" value="${coordinadorInstance?.cedula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="coordinador.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" maxlength="20" required="" value="${coordinadorInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="coordinador.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="30" required="" value="${coordinadorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorInstance, field: 'idEstadoCoordinador', 'error')} ">
	<label for="idEstadoCoordinador">
		<g:message code="coordinador.idEstadoCoordinador.label" default="Id Estado Coordinador" />
		
	</label>
	<g:field name="idEstadoCoordinador" type="number" value="${coordinadorInstance.idEstadoCoordinador}"/>

</div>


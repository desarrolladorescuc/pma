<%@ page import="pma.Tecnico" %>



<div class="fieldcontain ${hasErrors(bean: tecnicoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="tecnico.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="100" required="" value="${tecnicoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tecnicoInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="tecnico.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cedula" maxlength="20" required="" value="${tecnicoInstance?.cedula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tecnicoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="tecnico.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" maxlength="20" required="" value="${tecnicoInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tecnicoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="tecnico.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="30" required="" value="${tecnicoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tecnicoInstance, field: 'idEstadoTecnico', 'error')} ">
	<label for="idEstadoTecnico">
		<g:message code="tecnico.idEstadoTecnico.label" default="Id Estado Tecnico" />
		
	</label>
	<g:field name="idEstadoTecnico" type="number" value="${tecnicoInstance.idEstadoTecnico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tecnicoInstance, field: 'incidente', 'error')} ">
	<label for="incidente">
		<g:message code="tecnico.incidente.label" default="Incidente" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tecnicoInstance?.incidente?}" var="i">
    <li><g:link controller="incidente" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="incidente" action="create" params="['tecnico.id': tecnicoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'incidente.label', default: 'Incidente')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: tecnicoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="tecnico.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${pma.Usuario.list()}" optionKey="id" required="" value="${tecnicoInstance?.usuario?.id}" class="many-to-one"/>

</div>


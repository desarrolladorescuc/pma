<%@ page import="pma.Rol" %>



<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'rol', 'error')} required">
	<label for="rol">
		<g:message code="rol.rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rol" maxlength="100" required="" value="${rolInstance?.rol}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'estadoRol', 'error')} required">
	<label for="estadoRol">
		<g:message code="rol.estadoRol.label" default="Estado Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoRol" from="${rolInstance.constraints.estadoRol.inList}" required="" value="${rolInstance?.estadoRol}" valueMessagePrefix="rol.estadoRol"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'opcion', 'error')} ">
	<label for="opcion">
		<g:message code="rol.opcion.label" default="Opcion" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rolInstance?.opcion?}" var="o">
    <li><g:link controller="opcion" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="opcion" action="create" params="['rol.id': rolInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'opcion.label', default: 'Opcion')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'usuario', 'error')} ">
	<label for="usuario">
		<g:message code="rol.usuario.label" default="Usuario" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rolInstance?.usuario?}" var="u">
    <li><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="usuario" action="create" params="['rol.id': rolInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'usuario.label', default: 'Usuario')])}</g:link>
</li>
</ul>


</div>


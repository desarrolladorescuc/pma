<%@ page import="pma.Opcion" %>



<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'opcion', 'error')} required">
	<label for="opcion">
		<g:message code="opcion.opcion.label" default="Opcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="opcion" maxlength="100" required="" value="${opcionInstance?.opcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'idPadre', 'error')} ">
	<label for="idPadre">
		<g:message code="opcion.idPadre.label" default="Id Padre" />
		
	</label>
	<g:field name="idPadre" type="number" value="${opcionInstance.idPadre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'tipoOpcion', 'error')} required">
	<label for="tipoOpcion">
		<g:message code="opcion.tipoOpcion.label" default="Tipo Opcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoOpcion" from="${opcionInstance.constraints.tipoOpcion.inList}" required="" value="${opcionInstance?.tipoOpcion}" valueMessagePrefix="opcion.tipoOpcion"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'orden', 'error')} ">
	<label for="orden">
		<g:message code="opcion.orden.label" default="Orden" />
		
	</label>
	<g:textField name="orden" maxlength="3" value="${opcionInstance?.orden}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'controlador', 'error')} ">
	<label for="controlador">
		<g:message code="opcion.controlador.label" default="Controlador" />
		
	</label>
	<g:textField name="controlador" maxlength="200" value="${opcionInstance?.controlador}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'claseCss', 'error')} ">
	<label for="claseCss">
		<g:message code="opcion.claseCss.label" default="Clase Css" />
		
	</label>
	<g:textField name="claseCss" maxlength="100" value="${opcionInstance?.claseCss}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="opcion.url.label" default="Url" />
		
	</label>
	<g:textArea name="url" cols="40" rows="5" maxlength="300" value="${opcionInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'estadoOpcion', 'error')} required">
	<label for="estadoOpcion">
		<g:message code="opcion.estadoOpcion.label" default="Estado Opcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoOpcion" from="${opcionInstance.constraints.estadoOpcion.inList}" required="" value="${opcionInstance?.estadoOpcion}" valueMessagePrefix="opcion.estadoOpcion"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'operacion', 'error')} ">
	<label for="operacion">
		<g:message code="opcion.operacion.label" default="Operacion" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${opcionInstance?.operacion?}" var="o">
    <li><g:link controller="operacion" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="operacion" action="create" params="['opcion.id': opcionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'operacion.label', default: 'Operacion')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'rol', 'error')} required">
	<label for="rol">
		<g:message code="opcion.rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rol" name="rol.id" from="${pma.Rol.list()}" optionKey="id" required="" value="${opcionInstance?.rol?.id}" class="many-to-one"/>

</div>


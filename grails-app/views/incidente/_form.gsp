<%@ page import="pma.Incidente" %>



<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'registro', 'error')} required">
	<label for="registro">
		<g:message code="incidente.registro.label" default="Registro" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registro" precision="day"  value="${incidenteInstance?.registro}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'descripUsuario', 'error')} required">
	<label for="descripUsuario">
		<g:message code="incidente.descripUsuario.label" default="Descrip Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descripUsuario" cols="40" rows="5" maxlength="2000" required="" value="${incidenteInstance?.descripUsuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'idTipoIncidente', 'error')} required">
	<label for="idTipoIncidente">
		<g:message code="incidente.idTipoIncidente.label" default="Id Tipo Incidente" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idTipoIncidente" type="number" value="${incidenteInstance.idTipoIncidente}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'idCategoriaIncidente', 'error')} required">
	<label for="idCategoriaIncidente">
		<g:message code="incidente.idCategoriaIncidente.label" default="Id Categoria Incidente" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idCategoriaIncidente" type="number" value="${incidenteInstance.idCategoriaIncidente}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'estadoIncidente', 'error')} required">
	<label for="estadoIncidente">
		<g:message code="incidente.estadoIncidente.label" default="Estado Incidente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoIncidente" from="${incidenteInstance.constraints.estadoIncidente.inList}" required="" value="${incidenteInstance?.estadoIncidente}" valueMessagePrefix="incidente.estadoIncidente"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'idPrioridadIncidente', 'error')} required">
	<label for="idPrioridadIncidente">
		<g:message code="incidente.idPrioridadIncidente.label" default="Id Prioridad Incidente" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idPrioridadIncidente" type="number" value="${incidenteInstance.idPrioridadIncidente}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'descripTecnica', 'error')} ">
	<label for="descripTecnica">
		<g:message code="incidente.descripTecnica.label" default="Descrip Tecnica" />
		
	</label>
	<g:textArea name="descripTecnica" cols="40" rows="5" maxlength="1000" value="${incidenteInstance?.descripTecnica}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'solucionDada', 'error')} ">
	<label for="solucionDada">
		<g:message code="incidente.solucionDada.label" default="Solucion Dada" />
		
	</label>
	<g:textArea name="solucionDada" cols="40" rows="5" maxlength="500" value="${incidenteInstance?.solucionDada}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'solucion', 'error')} ">
	<label for="solucion">
		<g:message code="incidente.solucion.label" default="Solucion" />
		
	</label>
	<g:datePicker name="solucion" precision="day"  value="${incidenteInstance?.solucion}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="incidente.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${pma.Cliente.list()}" optionKey="id" required="" value="${incidenteInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'empleado', 'error')} required">
	<label for="empleado">
		<g:message code="incidente.empleado.label" default="Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleado" name="empleado.id" from="${pma.Empleado.list()}" optionKey="id" required="" value="${incidenteInstance?.empleado?.id}" class="many-to-one"/>

</div>


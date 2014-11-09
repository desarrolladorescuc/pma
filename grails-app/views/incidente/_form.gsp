<%@ page import="pma.Incidente" %>



<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'descripUsuario', 'error')} required">
	<label for="descripUsuario">
		<g:message code="incidente.descripUsuario.label" default="Descrip Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descripUsuario" cols="40" rows="5" maxlength="500" required="" value="${incidenteInstance?.descripUsuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'descripTecnica', 'error')} required">
	<label for="descripTecnica">
		<g:message code="incidente.descripTecnica.label" default="Descrip Tecnica" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descripTecnica" cols="40" rows="5" maxlength="500" required="" value="${incidenteInstance?.descripTecnica}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'solucionDada', 'error')} required">
	<label for="solucionDada">
		<g:message code="incidente.solucionDada.label" default="Solucion Dada" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="solucionDada" cols="40" rows="5" maxlength="500" required="" value="${incidenteInstance?.solucionDada}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'idTipoIncidente', 'error')} ">
	<label for="idTipoIncidente">
		<g:message code="incidente.idTipoIncidente.label" default="Id Tipo Incidente" />
		
	</label>
	<g:field name="idTipoIncidente" type="number" value="${incidenteInstance.idTipoIncidente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'idCategoriaIncidente', 'error')} ">
	<label for="idCategoriaIncidente">
		<g:message code="incidente.idCategoriaIncidente.label" default="Id Categoria Incidente" />
		
	</label>
	<g:field name="idCategoriaIncidente" type="number" value="${incidenteInstance.idCategoriaIncidente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'idEstadoIncidente', 'error')} ">
	<label for="idEstadoIncidente">
		<g:message code="incidente.idEstadoIncidente.label" default="Id Estado Incidente" />
		
	</label>
	<g:field name="idEstadoIncidente" type="number" value="${incidenteInstance.idEstadoIncidente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'idPrioridadIncidente', 'error')} ">
	<label for="idPrioridadIncidente">
		<g:message code="incidente.idPrioridadIncidente.label" default="Id Prioridad Incidente" />
		
	</label>
	<g:field name="idPrioridadIncidente" type="number" value="${incidenteInstance.idPrioridadIncidente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="incidente.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${pma.Cliente.list()}" optionKey="id" required="" value="${incidenteInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'registro', 'error')} required">
	<label for="registro">
		<g:message code="incidente.registro.label" default="Registro" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registro" precision="day"  value="${incidenteInstance?.registro}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'solucion', 'error')} required">
	<label for="solucion">
		<g:message code="incidente.solucion.label" default="Solucion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="solucion" precision="day"  value="${incidenteInstance?.solucion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: incidenteInstance, field: 'tecnico', 'error')} required">
	<label for="tecnico">
		<g:message code="incidente.tecnico.label" default="Tecnico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tecnico" name="tecnico.id" from="${pma.Tecnico.list()}" optionKey="id" required="" value="${incidenteInstance?.tecnico?.id}" class="many-to-one"/>

</div>


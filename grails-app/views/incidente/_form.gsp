<%@ page import="pma.Incidente" %>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'registro', 'error')} required">
    <label for="registro" class="col-sm-2 control-label">
        <g:message code="incidente.registro.label" default="Reportado" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-4">
        <g:datePicker name="registro" precision="day" value="${incidenteInstance?.registro}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'descripUsuario', 'error')} required">
    <label for="descripUsuario" class="col-sm-2 control-label">
        <g:message code="incidente.descripUsuario.label" default="Descripcion" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:textArea class="form-control" name="descripUsuario" cols="40" rows="3" maxlength="2000" required="" value="${incidenteInstance?.descripUsuario}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'idTipoIncidente', 'error')} required">
    <label for="idTipoIncidente" class="col-sm-2 control-label">
        <g:message code="incidente.idTipoIncidente.label" default="Tipo" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-2">
        <g:field class="form-control" name="idTipoIncidente" type="number" value="${incidenteInstance.idTipoIncidente}" required=""/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'idCategoriaIncidente', 'error')} required">
    <label for="idCategoriaIncidente" class="col-sm-2 control-label">
        <g:message code="incidente.idCategoriaIncidente.label" default="Categoria" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-2">
        <g:field class="form-control" name="idCategoriaIncidente" type="number" value="${incidenteInstance.idCategoriaIncidente}" required=""/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'estadoIncidente', 'error')} required">
    <label for="estadoIncidente" class="col-sm-2 control-label">
        <g:message code="incidente.estadoIncidente.label" default="Estado" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-2">
        <g:select class="form-control" name="estadoIncidente" from="${incidenteInstance.constraints.estadoIncidente.inList}" required="" value="${incidenteInstance?.estadoIncidente}" valueMessagePrefix="incidente.estadoIncidente"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'idPrioridadIncidente', 'error')} required">
    <label for="idPrioridadIncidente" class="col-sm-2 control-label">
        <g:message code="incidente.idPrioridadIncidente.label" default="Prioridad" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-2">
        <g:field class="form-control" name="idPrioridadIncidente" type="number" value="${incidenteInstance.idPrioridadIncidente}" required=""/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'descripTecnica', 'error')} ">
    <label for="descripTecnica" class="col-sm-2 control-label">
        <g:message code="incidente.descripTecnica.label" default="Tecnica" />
    </label>
    <div class="col-sm-6">
        <g:textArea class="form-control" name="descripTecnica" cols="40" rows="3" maxlength="1000" value="${incidenteInstance?.descripTecnica}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'solucionDada', 'error')} ">
    <label for="solucionDada" class="col-sm-2 control-label">
        <g:message code="incidente.solucionDada.label" default="Solucion" />
    </label>
    <div class="col-sm-6">
        <g:textArea class="form-control" name="solucionDada" cols="40" rows="3" maxlength="500" value="${incidenteInstance?.solucionDada}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'solucion', 'error')} ">
    <label for="solucion" class="col-sm-2 control-label">
        <g:message code="incidente.solucion.label" default="Resuelto" />
    </label>
    <div class="col-sm-4">
        <g:datePicker name="solucion" precision="day"  value="${incidenteInstance?.solucion}" default="none" noSelection="['': '']" class="form-control"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'cliente', 'error')} required">
    <label for="cliente" class="col-sm-2 control-label">
        <g:message code="incidente.cliente.label" default="Cliente" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-3">
        <g:select id="cliente" name="cliente.id" from="${pma.Cliente.list()}" optionKey="id" required="" value="${incidenteInstance?.cliente?.id}" class="many-to-one form-control"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: incidenteInstance, field: 'empleado', 'error')} required">
    <label for="empleado" class="col-sm-2 control-label">
        <g:message code="incidente.empleado.label" default="Empleado" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-3">
        <g:select id="empleado" name="empleado.id" from="${pma.Empleado.list()}" optionKey="id" required="" value="${incidenteInstance?.empleado?.id}" class="many-to-one form-control"/>
    </div>
</div>


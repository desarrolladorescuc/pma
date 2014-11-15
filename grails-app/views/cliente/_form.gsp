<%@ page import="pma.Cliente" %>

<div class="fieldcontain form-group ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} required">
    <label for="nombre" class="col-sm-2 control-label">
        <g:message code="cliente.nombre.label" default="Nombre" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-8">
        <g:textField class="form-control" name="nombre" maxlength="100" required="" value="${clienteInstance?.nombre}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: clienteInstance, field: 'cedula', 'error')} required">
    <label for="cedula" class="col-sm-2 control-label">
        <g:message code="cliente.cedula.label" default="Cedula" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-4">
        <g:textField class="form-control" name="cedula" maxlength="20" required="" value="${clienteInstance?.cedula}"/>
    </div>
</div>

<div class="fieldcontain form-group  ${hasErrors(bean: clienteInstance, field: 'email', 'error')} required">
    <label for="email" class="col-sm-2 control-label">
        <g:message code="cliente.email.label" default="Email" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control" name="email" maxlength="120" required="" value="${clienteInstance?.email}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: clienteInstance, field: 'celular', 'error')} ">
    <label for="celular" class="col-sm-2 control-label">
        <g:message code="cliente.celular.label" default="Celular" />
    </label>
    <div class="col-sm-4">
        <g:textField class="form-control" name="celular" maxlength="20" value="${clienteInstance?.celular}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: clienteInstance, field: 'cargo', 'error')} ">
    <label for="cargo" class="col-sm-2 control-label">
        <g:message code="cliente.cargo.label" default="Cargo" />
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control" name="cargo" maxlength="40" value="${clienteInstance?.cargo}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: clienteInstance, field: 'area', 'error')} ">
    <label for="area" class="col-sm-2 control-label">
        <g:message code="cliente.area.label" default="Area" />
    </label>
    <div class="col-sm-6">
        <g:textField class="form-control" name="area" maxlength="20" value="${clienteInstance?.area}"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: clienteInstance, field: 'estadoCliente', 'error')} required">
    <label for="estadoCliente" class="col-sm-2 control-label">
        <g:message code="cliente.estadoCliente.label" default="Estado Cliente" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-2">
        <g:select class="form-control" name="estadoCliente" from="${clienteInstance.constraints.estadoCliente.inList}" required="" value="${clienteInstance?.estadoCliente}" valueMessagePrefix="cliente.estadoCliente"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: clienteInstance, field: 'usuario', 'error')} ">
    <label for="usuario" class="col-sm-2 control-label">
        <g:message code="cliente.usuario.label" default="Usuario" />
    </label>
    <div class="col-sm-2">
        <g:select id="usuario" name="usuario.id" from="${pma.Usuario.list()}" optionKey="id" value="${clienteInstance?.usuario?.id}" class="many-to-one form-control" noSelection="['null': '']"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: clienteInstance, field: 'empresa', 'error')} required">
    <label for="empresa" class="col-sm-2 control-label">
        <g:message code="cliente.empresa.label" default="Empresa" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-4">
        <g:select id="empresa" name="empresa.id" from="${pma.Empresa.list()}" optionKey="id" required="" value="${clienteInstance?.empresa?.id}" class="many-to-one form-control"/>
    </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: clienteInstance, field: 'incidentes', 'error')} ">
    <label for="incidentes" class="col-sm-2 control-label">
        <g:message code="cliente.incidentes.label" default="Incidentes" />
    </label>
    <div class="col-sm-4">
        <ul class="one-to-many form-control">
            <g:each in="${clienteInstance?.incidentes?}" var="i">
                <li>
                    <g:link controller="incidente" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link>
                </li>
            </g:each>
            <li class="add">
                <g:link controller="incidente" action="create" params="['cliente.id': clienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'incidente.label', default: 'Incidente')])}</g:link>
            </li>
        </ul>
    </div>
</div>


<%@ page import="pma.ValorParametro" %>



<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'valor', 'error')} ">
	<label for="valor">
		<g:message code="valorParametro.valor.label" default="Valor" />
		
	</label>
	<g:textArea name="valor" cols="40" rows="5" maxlength="300" value="${valorParametroInstance?.valor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="valorParametro.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="150" value="${valorParametroInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'estadoValorParametro', 'error')} required">
	<label for="estadoValorParametro">
		<g:message code="valorParametro.estadoValorParametro.label" default="Estado Valor Parametro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoValorParametro" from="${valorParametroInstance.constraints.estadoValorParametro.inList}" required="" value="${valorParametroInstance?.estadoValorParametro}" valueMessagePrefix="valorParametro.estadoValorParametro"/>

</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'parametros', 'error')} required">
	<label for="parametros">
		<g:message code="valorParametro.parametros.label" default="Parametros" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parametros" name="parametros.id" from="${pma.Parametro.list()}" optionKey="id" required="" value="${valorParametroInstance?.parametros?.id}" class="many-to-one"/>

</div>


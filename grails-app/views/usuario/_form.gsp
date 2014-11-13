<%@ page import="pma.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="usuario.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${usuarioInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estadoUsuario', 'error')} required">
	<label for="estadoUsuario">
		<g:message code="usuario.estadoUsuario.label" default="Estado Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoUsuario" from="${usuarioInstance.constraints.estadoUsuario.inList}" required="" value="${usuarioInstance?.estadoUsuario}" valueMessagePrefix="usuario.estadoUsuario"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'rol', 'error')} required">
	<label for="rol">
		<g:message code="usuario.rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rol" name="rol.id" from="${pma.Rol.list()}" optionKey="id" required="" value="${usuarioInstance?.rol?.id}" class="many-to-one"/>

</div>


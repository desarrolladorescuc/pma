
<%@ page import="pma.Cliente" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="list-cliente" class="content scaffold-list col-lg-12" role="main">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                </div>
                <div class="panel-body">
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <table class="table table-hover">
                        <thead>
                            <tr class="active">
                                <g:sortableColumn property="nombre" title="${message(code: 'cliente.nombre.label', default: 'Nombre')}" />
                                <g:sortableColumn property="cedula" title="${message(code: 'cliente.cedula.label', default: 'Cedula')}" />
                                <g:sortableColumn property="email" title="${message(code: 'cliente.email.label', default: 'Email')}" />
                                <g:sortableColumn property="celular" title="${message(code: 'cliente.celular.label', default: 'Celular')}" />
                                <g:sortableColumn property="cargo" title="${message(code: 'cliente.cargo.label', default: 'Cargo')}" />
                                <g:sortableColumn property="area" title="${message(code: 'cliente.area.label', default: 'Area')}" />
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} ">
                                    <td><g:link action="show" id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "nombre")}</g:link></td>
                                    <td>${fieldValue(bean: clienteInstance, field: "cedula")}</td>
                                    <td>${fieldValue(bean: clienteInstance, field: "email")}</td>
                                    <td>${fieldValue(bean: clienteInstance, field: "celular")}</td>
                                    <td>${fieldValue(bean: clienteInstance, field: "cargo")}</td>
                                    <td>${fieldValue(bean: clienteInstance, field: "area")}</td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                    <div class="panel-footer">
                        <div class="pagination">
                            <g:paginate total="${clienteInstanceCount ?: 0}" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

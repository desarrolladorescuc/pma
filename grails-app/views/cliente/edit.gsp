<%@ page import="pma.Cliente" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="edit-cliente" class="content scaffold-edit col-lg-11" role="main">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h2><g:message code="default.edit.label" args="[entityName]" /></h2>
                </div>
                <div class="panel-body">
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <g:hasErrors bean="${clienteInstance}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${clienteInstance}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                </g:eachError>
                        </ul>
                    </g:hasErrors>
                    <g:form url="[resource:clienteInstance, action:'update']" method="PUT" class="form-horizontal" role="form">
                        <g:hiddenField name="version" value="${clienteInstance?.version}" />
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>

                        <div class="panel-footer">  
                            <fieldset class="buttons">
                                <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                            </fieldset>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>

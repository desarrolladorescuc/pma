<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Panel general</title>
    </head>
    <body>
        <div id="page-body" role="main" class="col-lg-10">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h2>Panel de configuracion general</h2>
                </div>
                <div id="controller-list" role="navigation" class="panel-body">               
                    <p class="text-warning">Seleccion el controlador que desea ver o modificar proceda con precaucion:</p>
                    <h2 class="text-warning">Controlladores disponibles</h2>
                    <ul>
                        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                            <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                            </g:each>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>

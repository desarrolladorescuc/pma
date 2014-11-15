<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">   
        <title>PMA - <g:layoutTitle default="Grails"/></title>
        <!-- Colocar icono aqui -->
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <!-- Bootstrap Core CSS -->
        <link href="${resource(dir:'tema/css', file: 'bootstrap.css')}" rel="stylesheet">      
        <!-- Timeline CSS -->
        <link href="${resource(dir:'tema/css', file:'timeline.css')}" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="${resource(dir:'tema/css', file:'sb-admin.css')}" rel="stylesheet">
        <link href="${resource(dir:'tema/css', file:'sb-admin-2.css')}" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="${resource(dir:'tema/css/plugins', file:'morris.css')}" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="${resource(dir:'tema/font/css', file:'font-awesome.min.css')}" rel="stylesheet" type="text/css">
        <!-- Grails CSS -->
    <asset:stylesheet src="application.css"/>
</head>
<g:set var="seguridadService" bean="seguridadService"/>
<body>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${createLink(uri: '/')}">PMA - Mesa de ayuda Integral</a>
            </div>
          <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">                
                <li class="dropdown">
                    <% def xuser=seguridadService.getUser(session["idUsuario"])%>
                    <g:if test="${xuser[0]==null}">
                        <a href="/pma/login/" ><i class="glyphicon glyphicon-log-in"></i> <strong> Iniciar Sesion</strong></a>
                            </g:if>
                            <g:else>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ${xuser[0]} <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="/pma/mainPanel"><i class="fa fa-bar-chart-o fa-fw"></i> Panel general</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="/pma/login/cerrarSesion"><i class="fa fa-fw fa-power-off"></i> Cerrar Sesion</a>
                            </li>
                        </ul>
                    </g:else>                        

                </li>
            </ul>
         <!-- navbar-static-side -->    
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="${createLink(uri: '/')}"><i class="fa fa-fw fa-dashboard"></i> Inicio</a>
                    </li>
                    <% def xmenu=seguridadService.getMenu(session["idUsuario"])%>
                    <g:if test="${xmenu!=null}">
                        <g:each in="${xmenu}" status="i" var="menu">
                            <li>   
                                <a class="active" href="${menu[1]}"><i class="${menu[2]}"></i> ${menu[0]}</a>
                            </li>
                        </g:each>
                    </g:if>
                </ul>
            </div>
        <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
            <div class="row container-fluid">
                <g:layoutBody/>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery Version 1.11.0 -->
    <script src="${resource(dir:'tema/js',file:'jquery-1.11.0.js')}"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${resource(dir:'tema/js',file:'bootstrap.min.js')}"></script>
    <!-- Grails JavaScript -->
<asset:javascript src="application.js"/>
</body>
</html>

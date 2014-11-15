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
        <!-- Custom CSS -->
        <link href="${resource(dir:'tema/css', file:'sb-admin.css')}" rel="stylesheet">
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
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="">PMA - Mesa de ayuda Integral</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">                
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Anthony Gonzalez <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#"><i class="fa fa-fw fa-user"></i> Mi Perfil</a>
                            </li>                            
                            <li class="divider"></li>
                            <li>
                                <a href="/pma/login/cerrarSesion"><i class="fa fa-fw fa-power-off"></i> Salir</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li>
                            <a href="${createLink(uri: '/')}"><i class="fa fa-fw fa-dashboard"></i> Inicio</a>
                        </li>
                        <%
                            def xmenu=seguridadService.getMenu(session["idUsuario"]) 
                        %>
                        <g:each in="${xmenu}" status="i" var="menu">
                            <li>   
                                <a class="active" href="${menu[1]}"><i class="${menu[2]}"></i> ${menu[0]}</a>
                            </li>
                        </g:each>   
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
            <div id="page-wrapper">
                <div class="container-fluid">
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

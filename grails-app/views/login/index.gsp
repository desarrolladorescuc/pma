<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>PMA - Mesa de ayuda Integral</title>
        <!-- Bootstrap Core CSS -->
        <link href="${resource(dir:'tema/css', file: 'bootstrap.min.css')}" rel="stylesheet">      
        <!-- Custom CSS -->
        <link href="${resource(dir:'tema/css', file:'sb-admin.css')}" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="${resource(dir:'tema/css/plugins', file:'morris.css')}" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="${resource(dir:'tema/font/css', file:'font-awesome.min.css')}" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-primary">
                        <div class="panel-heading">
                            <center><h3 class="panel-title" >PMA - Mesa de ayuda Integral</h3></center>                        
                            <center><h3 class="panel-title">Por favor, Inicie Sesion</h3></center> 
                        </div>
                        <div class="panel-body">
                            <g:if test="${flash.message}">
                                <div class="alert alert-danger alert-dismissable" role="status">${flash.message}</div>
                            </g:if>
                            <form role="form"  action="/pma/login/autenticacion" method="post" >
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Usuario" name="login"  autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Recuerdame
                                        </label>
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <button type="submit" class="btn btn-lg btn-info btn-block" >Ingresar</button> 
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery Version 1.11.0 -->
        <script src="${resource(dir:'tema/js',file:'jquery-1.11.0.js')}"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="${resource(dir:'tema/js',file:'bootstrap.min.js')}"></script>    
    </body>
</html>

package pma

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsWebRequest

class LoginController {
    def index() {
        if (session["id_session"]) {
            redirect url:"/"
            return false 
        }
    }
    
    def acceso(){
        render view: "acceso"
    }
    
    def autenticacion() {  
        
        def clave = params.password + ""
        clave = clave.encodeAsMD5()
        /*def query1 = "from Usuario u where u.usuario ='${params.username}'"
        def usuariosInstance = Usuario.executeQuery(query1)*/
        
        def query = Usuario.where {
            login == params.login.toString()
            password == clave            
            estadoUsuario == "Activo"
        }
        Usuario user = query.find()
        
        if (user){
            session["usuario"]  = user.login
            //session["nombre"]= generalService.getNombreEmpleado(user.id.toLong())
            session["idUsuario"]  = user.id
            session["id_session"]  = 123  
            redirect  url: "/"  
            println "Entro =${user}"
        }else{
            //flash.message = message(code: 'default.login.userError')
            flash.message = "Error en Autenticación"
            redirect  url: "/login/index"
        }
        
    }
    
    def cerrarSesion() { 
        session.invalidate()
        GrailsWebRequest.lookup(request).session = null        
        redirect(controller:"Login",action:"index")
    }
   
}

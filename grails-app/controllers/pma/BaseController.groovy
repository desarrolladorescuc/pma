package pma
abstract class BaseController {
    def beforeInterceptor = [action: this.&auth]
    def seguridadService
    def grailsApplication
  
    private auth(){
        println "actionUri=${actionUri}"
        if (!session["id_session"]){          
            redirect(controller:"Login",action:"index")
            return false   
        }
        def acceso=seguridadService.autorizacion(session['idUsuario'],actionUri)
            
        if(!acceso){
            flash.message="Acceso Denegado"
            redirect(controller:"Login",action:"acceso")
            return false
        }                
        def operaciones=seguridadService.getOperPorOpcion(session['idUsuario'],actionUri)
        if(operaciones != null){
            session["operaciones"] = operaciones
        }else{
            session["operaciones"] = []        
        } 
    }   
       
}
package pma

import grails.transaction.Transactional

@Transactional
class SeguridadService {
    
    def getOperPorOpcion(iduser,url){        
        def vec=url.split("/")
        println "vec=${vec}"
        def controlador=vec[2].toString()
        println "controlador=${controlador}"
        def query =""" select distinct  o.operacion from Operacion o, Rol r
                       where o.opcion.controlador='${controlador}' and 
                       o.opcion.rol.id in (select u.rol.id from Usuario u
                                    where u.id=${iduser})
                   """
        def operaciones=Operacion.executeQuery(query) 
        return operaciones           
    }
    
    def autorizacion(Long iduser,String uri){
        def excepciones=[]
        if(excepciones.contains(uri)) return true
        def  vec=uri.split("/")  
        println "vec=${vec}"
        def controlador=vec[1].toString()
        def accion=vec[2].toString()    
        println "controlador=${controlador}"
        print "accion=${accion}"
        def query=""" SELECT  u.login,o.rol.id,p.operacion  
                   from Opcion o, Operacion p ,Usuario u
                   where p.opcion.id=o.id and
                                u.id=${iduser} and
                            u.rol.id=o.rol.id and
                       o.controlador='${controlador}' and
                      p.operacion like '%${accion}%' 
                """
        println "query=${query}"
        def ctrl =Opcion.executeQuery(query)
        println "ctrl=${ctrl}"
        if(ctrl.size()>0) return true else return false  
    }
    
    def getUsuarioDelUsuario (String login) {
        Usuario usuario = Usuario.findByLogin(login)
        def dueño = usuario.belongsTo
        println "Dueño=${dueño}"
        return dueño
    }
    
    def getMenu(iduser){
        def xmenu=Opcion.executeQuery(""" 
                                      select o.opcion,o.url,o.claseCss from Opcion o, Usuario u where
                                        u.id=${iduser} and 
                                        u.rol.id=o.rol.id 
                                   """)
        println "xmenu=${xmenu}"
        return xmenu
        
    }
}

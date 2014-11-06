package pma

class Usuario {

    Login login
    String nombre
    String cedula
    String telefono
    String email
    String cargo
    String area
        
    static belongTo = [incidente:Incidente, empresa:Empresa]
    
    static mapping = {
        table'usuarios'
        version false
    }
    
    static constraints = {
        nombre blank:false, nullable:false, maxSize:100
        cedula blank:false, nullable:false, maxSize:20
        telefono blank:false, nullable:false, maxSize:20
        email blank:false, nullable:false, maxSize:30        
        cargo blank:false, nullable:false, maxSize:30        
        area blank:false, nullable:false, maxSize:100        
    }
}

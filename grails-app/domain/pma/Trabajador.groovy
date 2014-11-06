package pma

class Trabajador {

    Login login
    String nombre
    String cedula
    String telefono
    String email
    
    static belongTo = [incidente:Incidente]
    
    static mapping = {
        table'trabajadores'
        version false
    }
    
    static constraints = {
        nombre blank:false, nullable:false, maxSize:100
        cedula blank:false, nullable:false, maxSize:20
        telefono blank:false, nullable:false, maxSize:20
        email blank:false, nullable:false, maxSize:30        
    }
}

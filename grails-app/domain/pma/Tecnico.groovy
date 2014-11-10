package pma

class Tecnico {

    String nombre
    String cedula
    String telefono
    String email
    Integer idEstadoTecnico
    
    static hasMany = [incidente:Incidente]
    
    static hasOne = [usuario:Usuario]
    
    static mapping = {
        table'trabajadores'
        version false
    }
    
    static constraints = {
        nombre blank:false, nullable:false, maxSize:100
        cedula blank:false, nullable:false, maxSize:20
        telefono blank:false, nullable:false, maxSize:20
        email blank:false, nullable:false, maxSize:30       
        idEstadoTecnico nullable:true
    }
}

package pma

class Empresa {

    String nombre
    String nit
    
    static hasMany = [usuario:Usuario]
    
    static belongTo = [incidente:Incidente]
    
    static mapping = {
        table'empresas'
        version false
    }
    
    static constraints = {
        nombre blank:false, nullable:true, maxSise:50
        nit blank:false, nullable:true, maxSise:20
    }
}


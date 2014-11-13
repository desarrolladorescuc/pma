package pma

class Empresa {

    String nombre
    String nit
    String estadoEmpresa
    
    static hasMany = [cliente:Cliente] 
    
    static mapping = {
        table'empresas'
        version false
    }
    
    static constraints = {
        nombre  nullable:false, maxSise:50
        nit     nullable:false, maxSise:20
        estadoEmpresa inList:['Activo','Inactivo'] 
    }
    
    String  toString(){
        return nombre        
    } 
}


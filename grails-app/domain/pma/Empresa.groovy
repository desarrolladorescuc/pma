package pma

class Empresa {

    String nombre
    String nit
    String estadoEmpresa
    
    static hasMany = [cliente:Cliente]  
    
    static hasOne = [usuario:Usuario]
    
    static mapping = {
        table'empresas'
        version false
    }
    
    static constraints = {
        nombre blank:false, nullable:true, maxSise:50
        nit blank:false, nullable:true, maxSise:20
        estadoEmpresa inList:['Activo','Inactivo'] 
    }
    
    String  toString(){
        return nombre        
    } 
}


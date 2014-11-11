package pma

class Cliente {

    String nombre
    String cedula
    String telefono
    String email
    String cargo
    String area
    String estadoCliente
    
    static hasOne = [usuario:Usuario]
    
    static hasMany = [incidente:Incidente]
        
    static belongsTo = [empresa:Empresa]
    
    static mapping = {
        table'clientes'
        version false
    }
    
    static constraints = {
        nombre blank:false, nullable:false, maxSize:100
        cedula blank:false, nullable:false, maxSize:20
        telefono blank:false, nullable:false, maxSize:20
        email blank:false, nullable:false, maxSize:30        
        cargo blank:false, nullable:false, maxSize:30        
        area blank:false, nullable:false, maxSize:100      
        estadoCliente inList:['Activo','Inactivo'] 
    }
    
    String  toString(){
        return cedula        
    } 
}

package pma

class Cliente {

    String nombre
    String cedula
    String celular
    String email
    String cargo
    String area
    String estadoCliente
    Usuario usuario
    
    //static hasOne = [usuario:Usuario]
    
    static hasMany = [incidentes:Incidente]
        
    static belongsTo = [empresa:Empresa]
    
    static mapping = {
        table'clientes'
        version false
    }
    
    static constraints = {
        nombre          blank:false, maxSize:100
        cedula          blank:false, maxSize:20
        email           nullable:false,maxSize:120
        celular         nullable:true, maxSize:20        
        cargo           nullable:true, maxSize:40        
        area            nullable:true, maxSize:20      
        estadoCliente   inList:['Activo','Inactivo'] 
        usuario         nullable:true        
    }
    
    String  toString(){
        return cedula        
    } 
}

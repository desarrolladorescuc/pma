package pma

class Usuario {

    String login
    String password
    String estadoUsuario
    
    //static belongsTo =[cliente:Cliente, empleado:Empleado]
    static hasOne=[rol:Rol]
    
    static mapping ={
        table 'usuarios'
        version false              
    }
     
    static constraints = {
        login           nullable:false,unique:true
        password        nullable:false,password:true
        estadoUsuario   inList:['Activo','Inactivo'] 
    }
    String  toString(){
        return login        
    } 
}

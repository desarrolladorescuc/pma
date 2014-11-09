package pma

class Usuario {

    String login
    String password
    String estadoUsuario
    
    static belongsTo =[cliente:Cliente, tecnico:Tecnico, coordinador:Coordinador]
    static hasOne=[rol:Rol]
    
    static mapping ={
        table 'usuarios'
        version false              
    }
     
    static constraints = {
        login nullable:false,unique:true
        password  nullable:false,password:true
        estadoUsuario inList:['A','I'] 
    }
    String  toString(){
        return login        
    } 
}

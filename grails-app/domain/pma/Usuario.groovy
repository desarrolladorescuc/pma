package pma

class Usuario {

    String login
    String password
    String estadoUsuario
    
    static belongsTo =[cliente:Cliente, tecnico:Tecnico, coordinador:Coordinador,empresa:Empresa]
    static hasOne=[rol:Rol]
    
    static mapping ={
        table 'usuarios'
        version false              
    }
     
    static constraints = {
        login nullable:false,unique:true
        password  nullable:false,password:true
        estadoUsuario inList:['Activo','Inactivo'] 
    }
    String  toString(){
        return login        
    } 
}

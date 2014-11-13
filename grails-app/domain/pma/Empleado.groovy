package pma

class Empleado {

    String nombre
    String cedula
    String celular
    String email
    String estadoEmpleado
    Usuario usuario
    
    //static hasOne = [usuario:Usuario]
          
    static mapping = {
        table'empleados'
        version false
    }
    
    static constraints = {
        nombre          nullable:false, maxSize:100
        cedula          nullable:false, maxSize:20
        email           nullable:false, maxSize:30  
        celular         nullable:true, maxSize:20        
        estadoEmpleado  inList:['Activo','Inactivo'] 
    }
    
    String  toString(){
        return cedula        
    } 
}

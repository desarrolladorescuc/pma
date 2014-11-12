package pma

class Rol {
    String rol
    String estadoRol
    
    static hasMany=[opcion:Opcion,usuario:Usuario]
    
     static constraints = {
        rol  nullable:false,maxSize:100
        estadoRol maxSize:10
        estadoRol inList:['Activo','Inactivo'] 
    }
     static mapping ={
       table 'roles'
       version false              
     }
    
     def String toString(){
       return rol        
   }
}

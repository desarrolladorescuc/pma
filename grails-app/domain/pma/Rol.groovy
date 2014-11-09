package pma

class Rol {
    String rol
    String estadoRol
    
    static hasMany=[opcion:Opcion,usuario:Usuario]
    
     static constraints = {
        rol  nullable:false,maxSize:100
        estadoRol inList:['A','I'] 
    }
     static mapping ={
       table 'roles'
       version false              
     }
    
     def String toString(){
       return rol        
   }
}

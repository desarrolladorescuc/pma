package pma

class Opcion {
    String opcion
    String url
    String claseCss
    String controlador
    String tipoOpcion

    String estadoOpcion
    
    static belongsTo=[rol:Rol]
    
    static hasMany =[operacion:Operacion]
    
    static mapping ={
       table 'opciones'
       version false              
     }
    static constraints = {
        opcion        nullable:false, maxSize:100
        controlador   nullable: true, maxSize: 200
        claseCss      nullable: true, maxSize: 100
        url           nullable: true, maxSize: 300
        estadoOpcion inList:['Activo','Inactivo'] 
        tipoOpcion inList:['M','D']
    }
   def String toString(){
       return opcion        
   } 
}

package pma

class Opcion {
    String opcion
    Long   idPadre
    String tipoOpcion
    String orden
    String url
    String claseCss
    String controlador

    String estadoOpcion
    
    static belongsTo=[rol:Rol]
    
    static hasMany =[operacion:Operacion]
    
    static mapping ={
       table 'opciones'
       version false              
     }
    static constraints = {
        opcion nullable:false,maxSize:100
        idPadre nullable:true
        tipoOpcion inList:['M','D']
        orden         nullable: true, maxSize: 3
        controlador   nullable: true, maxSize: 200
        claseCss      nullable: true, maxSize: 100
        url           nullable: true, maxSize: 300
        estadoOpcion inList:['A','I'] 
    }
   def String toString(){
       return opcion        
   } 
}

package pma

class Operacion {
    String operacion
    String estadoOperacion
    
    static belongsTo=[opcion:Opcion]
    
    static mapping ={
       table 'operaciones'
       version false              
     }
    static constraints = {
        operacion nullable:false,maxSize:300
        estadoOperacion inList:['A','I'] 
        opcion nullable:true
    }
   def String toString(){
       return operacion        
   } 
}

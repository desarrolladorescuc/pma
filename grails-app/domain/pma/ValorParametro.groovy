package pma

class ValorParametro {
  String valor
  String descripcion
  String estadoValorParametro
  
     static belongsTo=[parametros:Parametro] // relacion bidireccional  Muchos a uno
   
    static mapping ={
       table 'valor_parametros'
       version false              
     }  
    static constraints = {        
        valor                 nullable:true, maxSize:300
        descripcion           nullable:true, maxSize:150
        estadoValorParametro  nullable:true, maxSize:1
    }
}

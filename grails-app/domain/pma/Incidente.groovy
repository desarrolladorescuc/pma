package pma

class Incidente {
    
    Date registro
    Date solucion    
    String descripUsuario
    String descripTecnica
    String solucionDada  
    String estadoIncidente
    Integer idTipoIncidente
    Integer idCategoriaIncidente    
    Integer idPrioridadIncidente
    
    static hasOne = [empleado:Empleado, cliente:Cliente]
   

    static mapping = {
        table'incidentes'
        version false
    }
    
    static constraints = {    
        registro            nullable:false 
        descripUsuario      nullable:false, maxSize:2000  
        idTipoIncidente     nullable:false
        idCategoriaIncidente nullable:false
        estadoIncidente     inList:['Activo','Inactivo'], nullable:false
        idPrioridadIncidente nullable:false      
        descripTecnica      nullable:true, maxSize:1000
        solucionDada        nullable:true, maxSize:500 
        solucion            nullable:true
    }
}


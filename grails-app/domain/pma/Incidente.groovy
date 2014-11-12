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
    
    static belongsTo = [tecnico:Tecnico, cliente:Cliente]
   

    static mapping = {
        table'incidentes'
        version false
    }
    
    static constraints = {       
        descripUsuario blank:false, nullable:false, maxSize:500
        descripTecnica blank:true, nullable:false, maxSize:500
        solucionDada blank:true, nullable:false, maxSize:500 
        idTipoIncidente blank:false, nullable:true
        idCategoriaIncidente blank:false, nullable:true
        estadoIncidente inList:['Activo','Inactivo'] 
        idPrioridadIncidente blank:true, nullable:true
    }
}


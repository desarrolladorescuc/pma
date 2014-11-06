package pma

class Incidente {

    Tipo tipo
    Categoria categoria
    Estado estado
    Date registro
    Date solucion
    Trabajador asignado
    Empresa empresa
    Usuario usuario
    Prioridad prioridad
    String descripUsuario
    String descripTecnica
    String solucionDada

    static mapping = {
        table'incidentes'
        version false
    }
    
    static constraints = {       
        descripUsuario blank:false, nullable:false, maxSize:250
        descripTecnica blank:false, nullable:false, maxSize:150
        solucionDada blank:false, nullable:false, maxSize:150            
    }
}


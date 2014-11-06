package pma

class Login {

    String nombre   
    String contra
    Rol rol
    
    static belongTo = [trabajador:Trabajador, usuario:Usuario]
    
    static mapping = {
        table'logins'
        version false
    }
    
    static constraints = {
        nombre blank:false, nullable:false, maxSize:100
        contra blank:false, nullable:false, maxSize:30
    }
}

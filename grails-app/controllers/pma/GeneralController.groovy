package pma

class GeneralController {
   def generalService
   def seguridadService
    def index() { 
      // def opers=generalService.getOperPorOpcion(1,'/crmcuc/persona/index')
      // def opers=seguridadService.autorizacion(1,'/crmcuc/cliente/index')
       def opers=seguridadService.getMenu(1)
        println "opers=${opers}"
       render text:"ok"
    
    }
}

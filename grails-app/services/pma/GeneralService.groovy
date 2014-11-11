package pma

import grails.transaction.Transactional

@Transactional
class GeneralService {

    def getValorParametros(Integer idparametro) {
        
        return  ValorParametro.findByIdValorParametro(idparametro)
    }   

}

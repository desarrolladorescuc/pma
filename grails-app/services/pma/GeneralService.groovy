package pma

import grails.transaction.Transactional

@Transactional
class GeneralService {

    def getValorParametros(Integer idParametro) {
        return ValorParametro.findBy
    }
}

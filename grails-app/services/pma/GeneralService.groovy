package pma

import grails.transaction.Transactional

@Transactional
class GeneralService {

    def getValorParametros(Integer idparametro) {
        def param = ValorParametro.executeQuery("""select valor
                                                from ValorParametro v  
                                                where v.parametros.id=${idparametro} and
                                                v.estadoValorParametro='Activo' """)
        println "param=${param}"
        return param
    }
    
    def getValorParametro(Integer idvalparametro) {        
        /* return  ValorParametro.executeQuery("""select valor from ValorParametro v  
                                                    where v.id=${idvalparametro} and
                                                    v.estadoValorParametro='A' """)*/
        def resp= ValorParametro.findByIdAndEstadoValorParametro(idvalparametro,'Activo')        
        return resp  
    }

}


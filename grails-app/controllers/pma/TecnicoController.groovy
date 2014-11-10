package pma



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TecnicoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Tecnico.list(params), model:[tecnicoInstanceCount: Tecnico.count()]
    }

    def show(Tecnico tecnicoInstance) {
        respond tecnicoInstance
    }

    def create() {
        respond new Tecnico(params)
    }

    @Transactional
    def save(Tecnico tecnicoInstance) {
        if (tecnicoInstance == null) {
            notFound()
            return
        }

        if (tecnicoInstance.hasErrors()) {
            respond tecnicoInstance.errors, view:'create'
            return
        }

        tecnicoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tecnico.label', default: 'Tecnico'), tecnicoInstance.id])
                redirect tecnicoInstance
            }
            '*' { respond tecnicoInstance, [status: CREATED] }
        }
    }

    def edit(Tecnico tecnicoInstance) {
        respond tecnicoInstance
    }

    @Transactional
    def update(Tecnico tecnicoInstance) {
        if (tecnicoInstance == null) {
            notFound()
            return
        }

        if (tecnicoInstance.hasErrors()) {
            respond tecnicoInstance.errors, view:'edit'
            return
        }

        tecnicoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tecnico.label', default: 'Tecnico'), tecnicoInstance.id])
                redirect tecnicoInstance
            }
            '*'{ respond tecnicoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Tecnico tecnicoInstance) {

        if (tecnicoInstance == null) {
            notFound()
            return
        }

        tecnicoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tecnico.label', default: 'Tecnico'), tecnicoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tecnico.label', default: 'Tecnico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

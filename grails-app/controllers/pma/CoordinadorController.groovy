package pma



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CoordinadorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Coordinador.list(params), model:[coordinadorInstanceCount: Coordinador.count()]
    }

    def show(Coordinador coordinadorInstance) {
        respond coordinadorInstance
    }

    def create() {
        respond new Coordinador(params)
    }

    @Transactional
    def save(Coordinador coordinadorInstance) {
        if (coordinadorInstance == null) {
            notFound()
            return
        }

        if (coordinadorInstance.hasErrors()) {
            respond coordinadorInstance.errors, view:'create'
            return
        }

        coordinadorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'coordinador.label', default: 'Coordinador'), coordinadorInstance.id])
                redirect coordinadorInstance
            }
            '*' { respond coordinadorInstance, [status: CREATED] }
        }
    }

    def edit(Coordinador coordinadorInstance) {
        respond coordinadorInstance
    }

    @Transactional
    def update(Coordinador coordinadorInstance) {
        if (coordinadorInstance == null) {
            notFound()
            return
        }

        if (coordinadorInstance.hasErrors()) {
            respond coordinadorInstance.errors, view:'edit'
            return
        }

        coordinadorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Coordinador.label', default: 'Coordinador'), coordinadorInstance.id])
                redirect coordinadorInstance
            }
            '*'{ respond coordinadorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Coordinador coordinadorInstance) {

        if (coordinadorInstance == null) {
            notFound()
            return
        }

        coordinadorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Coordinador.label', default: 'Coordinador'), coordinadorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordinador.label', default: 'Coordinador'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

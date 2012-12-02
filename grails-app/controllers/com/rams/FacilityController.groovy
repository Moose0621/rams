package com.rams

import org.springframework.dao.DataIntegrityViolationException

class FacilityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [facilityInstanceList: Facility.list(params), facilityInstanceTotal: Facility.count()]
    }

    def create() {
        [facilityInstance: new Facility(params)]
    }

    def save() {
        def facilityInstance = new Facility(params)
        if (!facilityInstance.save(flush: true)) {
            render(view: "create", model: [facilityInstance: facilityInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'facility.label', default: 'Facility'), facilityInstance.id])
        redirect(action: "show", id: facilityInstance.id)
    }

    def show(Long id) {
        def facilityInstance = Facility.get(id)
        if (!facilityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'facility.label', default: 'Facility'), id])
            redirect(action: "list")
            return
        }

        [facilityInstance: facilityInstance]
    }

    def edit(Long id) {
        def facilityInstance = Facility.get(id)
        if (!facilityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'facility.label', default: 'Facility'), id])
            redirect(action: "list")
            return
        }

        [facilityInstance: facilityInstance]
    }

    def update(Long id, Long version) {
        def facilityInstance = Facility.get(id)
        if (!facilityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'facility.label', default: 'Facility'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (facilityInstance.version > version) {
                facilityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'facility.label', default: 'Facility')] as Object[],
                          "Another user has updated this Facility while you were editing")
                render(view: "edit", model: [facilityInstance: facilityInstance])
                return
            }
        }

        facilityInstance.properties = params

        if (!facilityInstance.save(flush: true)) {
            render(view: "edit", model: [facilityInstance: facilityInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'facility.label', default: 'Facility'), facilityInstance.id])
        redirect(action: "show", id: facilityInstance.id)
    }

    def delete(Long id) {
        def facilityInstance = Facility.get(id)
        if (!facilityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'facility.label', default: 'Facility'), id])
            redirect(action: "list")
            return
        }

        try {
            facilityInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'facility.label', default: 'Facility'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'facility.label', default: 'Facility'), id])
            redirect(action: "show", id: id)
        }
    }
}

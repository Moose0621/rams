package com.rams



import org.junit.*
import grails.test.mixin.*

@TestFor(FacilityController)
@Mock(Facility)
class FacilityControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/facility/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.facilityInstanceList.size() == 0
        assert model.facilityInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.facilityInstance != null
    }

    void testSave() {
        controller.save()

        assert model.facilityInstance != null
        assert view == '/facility/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/facility/show/1'
        assert controller.flash.message != null
        assert Facility.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/facility/list'

        populateValidParams(params)
        def facility = new Facility(params)

        assert facility.save() != null

        params.id = facility.id

        def model = controller.show()

        assert model.facilityInstance == facility
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/facility/list'

        populateValidParams(params)
        def facility = new Facility(params)

        assert facility.save() != null

        params.id = facility.id

        def model = controller.edit()

        assert model.facilityInstance == facility
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/facility/list'

        response.reset()

        populateValidParams(params)
        def facility = new Facility(params)

        assert facility.save() != null

        // test invalid parameters in update
        params.id = facility.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/facility/edit"
        assert model.facilityInstance != null

        facility.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/facility/show/$facility.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        facility.clearErrors()

        populateValidParams(params)
        params.id = facility.id
        params.version = -1
        controller.update()

        assert view == "/facility/edit"
        assert model.facilityInstance != null
        assert model.facilityInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/facility/list'

        response.reset()

        populateValidParams(params)
        def facility = new Facility(params)

        assert facility.save() != null
        assert Facility.count() == 1

        params.id = facility.id

        controller.delete()

        assert Facility.count() == 0
        assert Facility.get(facility.id) == null
        assert response.redirectedUrl == '/facility/list'
    }
}

class BootStrap {

	def grailsApplication
	
    def init = { servletContext ->
		println grailsApplication.metadata['app.grails.version']
    }
    def destroy = {
    }
}

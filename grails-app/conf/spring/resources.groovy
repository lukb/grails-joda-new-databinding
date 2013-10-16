import joda.test.JodaDateConverter;

// Place your Spring DSL code here
beans = {
	
	for(Class jodaType : JodaDateConverter.SUPPORTED_TYPES) {
		println "joda${jodaType.simpleName}Converter"
		"joda${jodaType.simpleName}Converter"(JodaDateConverter) {
			grailsApplication = ref("grailsApplication")
			type = jodaType
		}
	}
	
}

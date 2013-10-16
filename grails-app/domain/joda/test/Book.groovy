package joda.test

import org.joda.time.LocalDate

class Book {

	String title
	
	LocalDate releaseDate
	
    static constraints = {
		title maxSize: 100
    }
}

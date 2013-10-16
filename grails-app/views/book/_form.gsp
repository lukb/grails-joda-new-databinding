<%@ page import="joda.test.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		
	</label>
	<g:textField name="title" maxlength="100" value="${bookInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'releaseDate', 'error')} required">
	<label for="releaseDate">
		<g:message code="book.releaseDate.label" default="Release Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="releaseDate" value="${bookInstance?.releaseDate ? joda.format(value: bookInstance.releaseDate) : bookInstance?.releaseDate}" />
</div>


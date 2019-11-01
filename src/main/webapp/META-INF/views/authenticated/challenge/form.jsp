<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="authenticated.challenge.form.label.title" path="title"/>
	<acme:form-textarea code="authenticated.challenge.form.label.description" path="description"/>
	<acme:form-moment code="authenticated.challenge.form.label.moment" path="moment"/>
	<acme:form-textarea code="authenticated.challenge.form.label.goldR" path="goldR"/>
	<acme:form-textarea code="authenticated.challenge.form.label.silverR" path="silverR"/>
	<acme:form-textarea code="authenticated.challenge.form.label.bronzeR" path="bronzeR"/>
	<acme:form-textarea code="authenticated.challenge.form.label.goldG" path="goldG"/>
	<acme:form-textarea code="authenticated.challenge.form.label.silverG" path="silverG"/>
	<acme:form-textarea code="authenticated.challenge.form.label.bronzeG" path="bronzeG"/>
	
	<acme:form-return code="authenticated.challenge.form.button.return"/>
</acme:form>

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
	<acme:form-textbox code="anonymous.company-record.form.name" path="name"/>
	<acme:form-textbox code="anonymous.company-record.form.sector" path="sector"/>
	<acme:form-textbox code="anonymous.company-record.form.ceo" path="ceo"/>
<%-- <acme:form-textarea code="anonymous.company-record.form.indication" path="indication"/> --%>
	<acme:form-url code="anonymous.company-record.form.webSite" path="website"/>
<%-- <acme:form-textbox code="anonymous.company-record.form.prefix" path="prefix"/>
	<acme:form-textbox code="anonymous.company-record.form.areaCode" path="areaCode"/>--%>	
	<acme:form-textbox code="anonymous.company-record.form.phone" path="phone"/>
	<acme:form-textbox code="anonymous.company-record.form.email" path="email"/>

  	<acme:form-return code="anonymous.company-record.form.button.return"/>
</acme:form>
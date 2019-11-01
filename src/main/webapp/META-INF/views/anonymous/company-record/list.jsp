<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list>
<acme:list-column code="anonymous.company-record.label.name" path="name" width="20%"/>
<acme:list-column code="anonymous.company-record.label.sector" path="sector" width="20%"/>
<acme:list-column code="anonymous.company-record.label.ceo" path="ceo" width="20%"/>
<%--<acme:list-column code="anonymous.company-record.label.prefix" path="prefix" width="20%"/>
<acme:list-column code="anonymous.company-record.label.areaCode" path="areaCode" width="20%"/> --%>
<%-- <acme:list-column code="anonymous.company-record.label.indication" path="indication"/> --%>

</acme:list>
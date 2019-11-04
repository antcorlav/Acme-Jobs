<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list>
<acme:list-column code="anonymous.company-record.list.label.name" path="name" width="20%"/>
<acme:list-column code="anonymous.company-record.list.label.sector" path="sector" width="20%"/>
<acme:list-column code="anonymous.company-record.list.label.ceo" path="ceo" width="20%"/>
<acme:list-column code="anonymous.company-record.list.label.description" path="description" width="20%"/>
<acme:list-column code="anonymous.company-record.list.label.webSite" path="webSite" width="20%"/>
<acme:list-column code="anonymous.company-record.list.label.phone" path="phone" width="20%"/>
<acme:list-column code="anonymous.company-record.list.label.email" path="email" width="20%"/>
<acme:list-column code="anonymous.company-record.list.label.indication" path="indication" width="20%"/>
<acme:list-column code="anonymous.company-record.list.label.star" path="star" width="20%"/>

</acme:list>


<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list>

	<acme:list-column code="authenticated.solicitud.list.label.title" path="title" width="20%" />
	<acme:list-column code="authenticated.solicitud.list.label.text" path="text" width="20%" />
	<acme:list-column code="authenticated.solicitud.list.label.moment" path="moment" width="20%" />
	<acme:list-column code="authenticated.solicitud.list.label.deadline" path="deadline" width="20%" />
	<acme:list-column code="authenticated.solicitud.list.label.reward" path="reward" width="20%" />
	<acme:list-column code="authenticated.solicitud.list.label.ticker" path="ticker" width="20%" />

</acme:list>
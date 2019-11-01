<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list>
<acme:list-column code="authenticated.challenge.list.label.moment" path="moment" width="10%"/>
<acme:list-column code="authenticated.challenge.list.label.description" path="description" width="25%"/>
<acme:list-column code="authenticated.challenge.list.label.title" path="title" width="25%"/>
<acme:list-column code="authenticated.challenge.list.label.goldR" path="goldR" width="20%"/>
<acme:list-column code="authenticated.challenge.list.label.silverR" path="silverR" width="10%"/>
<acme:list-column code="authenticated.challenge.list.label.bronzeR" path="bronzeR" width="10%"/>

</acme:list>
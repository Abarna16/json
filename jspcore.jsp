<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:out value="${'hi' }"/>
<c:import url="index.html" var="data"/>
<c:out value="${data }"/>
<c:set var="data1" value="${'this is  set' }"/>
<c:out value="${data1 }"/>
<c:remove var="data1" />
<c:out value="${data1 }"/>
<c:catch var="exception1">
<% int c=12/0; %>
</c:catch>
<c:if test="${exception1!=null}">
<%="exection occured" %>
</c:if>
<a href = "<c:url value = "index.html"/>">TEST</a>
 <c:url value="index.html" var="url1">
<c:param name="name" value="abar"/>
<c:param name="password" value="abar"/>
</c:url>
<c:import url="${url1}"/> 

<%-- <c:redirect url="index.html"/>
 --%>
<c:out value="${myURL}"/> 
<c:choose>
<c:when test="${12>12}">
greater than 12.
</c:when>
<c:when test="${12<12}">
less than 12.
</c:when>
<c:otherwise>
equal to 12.
</c:otherwise>
</c:choose>
<p>
<c:forEach var="k" begin="5" end="6">
<c:out value="${k }"/><p>
</c:forEach>

<c:forTokens var="i" items="hi,hello, how , are,    you" delims=",">
<c:out value="${i }"/><p>
</c:forTokens>
</body>
</html>
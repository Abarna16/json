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
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="a" value="   Hi-good-     	morning    "/>
${fn:contains(a,'good')}<p>
${fn:containsIgnoreCase(a,'Good')}<p>
Before Trim${fn:length(a)}<p>
 <c:set var="trim1" value="${fn:trim(a)}"/><p>
 After trim ${fn:length(trim1)}<p>
${a}<p>
 After replaement ${fn:replace(a,"good","Good") } 
 
${fn:indexOf(a,"good")}<p>
${fn:toUpperCase(a)}<p>
${fn:toLowerCase(a)}<p>


<c:set var="string1" value="${fn:split(a, '-')}"/>
<c:set var="string2" value="${fn:join(string1,' ') }"/>
<c:out value="${string2 }"/><p>
<c:set var="p" value="<xm1l>Hi-good-morning<xm1l>"/>
with escapexml ${fn:escapeXml(p) }<p>
without escapexml ${p }

${fn:startsWith(p,'Hi') }<p>
${fn:endsWith(p,'hi') }<p>
${a}<p>
${fn:substring(a,4,7 )}<p>

After Hi ${fn:substringAfter(a,"Hi")}<p>
Before good  ${fn:substringBefore(a,"good" )}<p>




</body>
</html>
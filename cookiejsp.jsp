<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Cookie ob=new Cookie("name",request.getParameter("name"));
Cookie ob1=new Cookie("password",request.getParameter("password"));
response.addCookie(ob);
response.addCookie(ob1);
%>
<%
Cookie object=null;
Cookie[] object1=null;
object1=request.getCookies();
for(int i=0;i<object1.length;i++)
{
	object=object1[i];
	if((object.getName()).equals("name"))
	{
		object.setMaxAge(0);
		response.addCookie(object);
	}
out.print(object.getName()+object.getValue());	
}
%>
</body>
</html>
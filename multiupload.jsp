<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<% 
MultipartRequest ob=new MultipartRequest(request,"E:/temp");
out.println("uploaded successfully");
%>

 <%@ page import="java.io.*" %>
<%
String filename="cookiejsp.jsp";
String filepath="E:\\";

response.setContentType("APPLICATION/OCTET-STREAM");
response.setHeader("Content-Disposition","attachment; filename\"" + filename + "\"");
FileInputStream ob=new FileInputStream(filepath + filename);
int i;
while((i=ob.read())!=-1)
{
	out.write(i);
}
ob.close();

%> 

<%-- <%    
  String filename = "cookiejsp.jsp";   
  String filepath = "E:\\";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();   
%>    --%>
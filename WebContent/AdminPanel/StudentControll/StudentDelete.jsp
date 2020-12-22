<%@ page import="bean.Student" %>
<%@page import="DAO.StudentOperation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Delete</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/BackgoundCSS.css" />

</head>
<body>
<%if(request.getParameter("id")!=null)
{
	int sid=Integer.parseInt(request.getParameter("id"));
	StudentOperation st=new StudentOperation();
	boolean b=st.delete(sid);
	if(b==true)
	{%>
	
	<h1>The record deleted</h1>
	<%}
	}
	else{
	out.println("Select any record ");
	}
	%>
</body>
</html>
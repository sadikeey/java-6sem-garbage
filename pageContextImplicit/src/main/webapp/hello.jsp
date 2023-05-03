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
		String name = request.getParameter("name");
		out.println("Hello " + name);
		pageContext.setAttribute("username", name, pageContext.SESSION_SCOPE);
	%>
	<a href="second.jsp">Go to second page</a>
</body>
</html>
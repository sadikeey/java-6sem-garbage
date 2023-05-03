<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		int add(int a, int b){
			return a+b;
		}
		/* Not working now */
	%>
	<% out.print("Addition : " + add(2,3)); %>
</body>
</html>
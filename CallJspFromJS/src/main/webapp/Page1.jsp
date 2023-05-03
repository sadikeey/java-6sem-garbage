<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	const callJspPage = () => window.location = "Page2.jsp";
</script>
<body>
	<h1>Calling another JSP page from JavaScript.</h1>
	<input type="button" value="Redirect" onclick="callJspPage()">
</body>
</html>

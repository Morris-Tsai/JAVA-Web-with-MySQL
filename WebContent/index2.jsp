<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>

</head>
<body>


<%
response.setContentType("text/html");

request.getRequestDispatcher("index.jsp").include(request, response);
session=request.getSession();
session.invalidate();
out.print("<script>alert(\"You are successfully logged out\");</script>") ;

%>
</body>
</html>
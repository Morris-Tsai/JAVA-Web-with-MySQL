<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>

<% 
response.setContentType("text/html");
String name =request.getParameter("name");
String password =request.getParameter("password");
session=request.getSession(true);
String ID= session.getId();
String name1 =(String)session.getAttribute("name");
request.setCharacterEncoding("utf-8");
// 获取Kaptcha jar包里面的KAPTCHA_SESSION_KEY
String trueCaptcha = (String)session.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
String inputCaptcha = request.getParameter("captcha");






if(name.equals(name1)) {
	
	out.print("<script>alert(\"Have login already\");</script>");
	request.getRequestDispatcher("welcome.jsp").include(request, response);
}else{
		if(password.equals("775299")&&trueCaptcha.toLowerCase().equals(inputCaptcha.toLowerCase())) {
			
			session.setAttribute("name", name);
			
			
			request.getRequestDispatcher("welcome.jsp").include(request, response);
		}else {
			
					 
			out.print("<script>alert(\"ID or Password or Code is wrong!\");</script>") ; 
			request.getRequestDispatcher("index.jsp").include(request, response);
			
		}
		out.close();
}
%>
</body>
</html>
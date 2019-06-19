<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>User Management Application</title>
	<meta name="description" content="Responsive tables design with CSS and jQuery">
<meta name="author" content="Gary Hepting">
<meta name="revisit-after" content="30 days">
<meta name="robots" content="index, follow" >
<link rel="stylesheet" href="jquery-responsive-tables.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
<script>window.jQuery || document.write('<script src="jquery-1.10.2.min.js" type="text/javascript"><\/script>')</script>
<script type="text/javascript" src="jquery-responsiveTables.js"></script>
<script type="text/javascript" src="jquery.responsiveText.js"></script>
<script type="text/javascript">
      $(document).ready(function() {
        $('.responsive').not('table').responsiveText();
        $('table.responsive').responsiveTables();
      });
    </script>
<link href="https://fonts.googleapis.com/css?family=Pacifico|Average+Sans" rel='stylesheet' type='text/css'>
<style type="text/css">
body {
margin: 0;
padding: 20px;
font-family: 'Average Sans', sans-serif;
font-size: 16px;
font-weight: normal;
line-height: 1.5;
background: #589283;
color: #fff;
text-shadow: 2px 2px 2px #3F6558;
}
a, a:link, a:visited {
color: #fff;
text-decoration: none;
border-bottom: 1px dashed #3F6558;
-webkit-transition: border-color 0.3s ease-in;
}
a:hover, a:focus {
border-bottom: 1px dashed #FF8C00;
color:#FF8C00;
}
h1, h2, h3, p {
text-align: center;
}
h1, h2, h3 {
padding: 0 0.1em;
}
h1[data-scrollable] {
line-height: 1.85;
}
.heading {
margin-top: 0.25em;
font-family: 'Pacifico', sans-serif;
text-shadow: 0.1em 0.1em 2px #3F6558;
}
.subheading {
font-weight: normal;
}
.button {
margin: 2em 0;
}
.button a {
background: #3F6558;
padding: 0.4em 1em;
border: none;
border-radius: 10px;
}
.clearfix {
clear: both;
}
.space {
margin: 5em 0;
}
table {
border: 1px solid #3F6558;
margin-bottom: 20px;
}
thead tr th {
background: #3F6558;
}
th, td {
padding: 0 10px;
}
tbody th, tbody td {
border: 1px solid #3F6558;
}
.footer {
  width: 100%;
  height: 10px;
  
  margin: ;
  text-align: center;
  color: #72A2D9
}
img {
  border-radius: 100%;
  width: 50px;
  height: 50px;
  margin: 0px
}
</style>
</head>
</head>
<body>
<%request.getRequestDispatcher("link.jsp").include(request, response); %>
<form action="servlet"></form>
	<center>
		<h1 class="heading responsive" data-compression="8.4" style="font-size: 80px;"><span class="responsiveText-wrapper">User Management</span></h1>
        <h2>
        	<a href="new">Add New User</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Users</a>
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.country}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${user.id}' />">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${user.id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div><br><br><br><br>
	<div class="footer">
  
    
    <a href="https://www.facebook.com/">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Facebook-128.png">
    </a>
    <a href=" https://twitter.com/">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Twitter-128.png">
    </a>
    <a href=" https://www.instagram.com/">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Instagram-128.png">
    </a>
    <a href="https://www.youtube.com/">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Youtube-128.png">
    </a>
    <a href="http://plus.google.com/">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/googleplus-128.png">
    </a>
    <a href="https://www.linkedin.com/">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Linckedin-128.png">
    </a>
    <a href="https://github.com/harunpehlivan">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Git-128.png">
    </a>
    <a href="http://harunpehlivan.blogspot.com.tr">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/w-128.png">
    </a>
  </div>	
</body>
</html>

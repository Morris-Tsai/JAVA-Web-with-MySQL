 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login page</title>
<meta name="description" content="Responsive tables design with CSS and jQuery">
<meta name="author" content="Gary Hepting">
<meta name="revisit-after" content="30 days">
<meta name="robots" content="index, follow" >
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
body{
			background-color: black;
		}

		#box{
			height: 2px;
			width: 1px;
			padding: 5px;
			background-color: #66f9ff;
			border-radius: 10px;
			line-height:90px;
			box-shadow: 0 0 15px #66ffff;
		}
		#circle{
			height: 100%;
			width: 75%;
			border-radius: 400px;
			background-color: none;
			padding-bottom: 30px;
			border : 4px solid #00cccc;
		}
		#in{
			width: 90%;
			height: 50px;
			border-radius: 10px;
			padding: 8px;
			border : 4px solid #00cccc;
			background-color: #333333;
			color: white;
		}
		#in:focus{
			border:6px solid #00cccc;
		}
		#inBtn{
			width: 90%;
			height: 50px;
			border-radius: 10px;
			line-height:10px;
			border : 4px solid #00cccc;
			background-color: #333333;
			color:white;
			cursor: pointer;
		}
		#copy{
			color: #00cccc;
			text-align: center;
			font-style: italic;
		}
		footer{
			position:fixed;		    
		    bottom:0px;
		    left:0px;
		    right:0px;
		    margin-bottom:0px;
		}html { 
  background: url(http://cdn.magdeleine.co/wp-content/uploads/2014/05/3jPYgeVCTWCMqjtb7Dqi_IMG_8251-1400x933.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  overflow: hidden;
}

img{
  display: block;
  margin: auto;
  width: 70%;
  height: auto;
}

#login-button{
  cursor: pointer;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 30px;
  margin: auto;
  width: 100px;
  height: 100px;
  border-radius: 50%;
  background: rgba(3,3,3,.8);
  overflow: hidden;
  opacity: 0.4;
  box-shadow: 10px 10px 30px #000;}

/* Login container */
#container{
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  margin: auto;
  width: 260px;
  height: 400px;
  border-radius: 5px;
  background: rgba(3,3,3,0.25);
  box-shadow: 1px 1px 50px #000;
  display: none;
}

.close-btn{
  position: absolute;
  cursor: pointer;
  font-family: 'Open Sans Condensed', sans-serif;
  line-height: 18px;
  top: 3px;
  right: 3px;
  width: 20px;
  height: 20px;
  text-align: center;
  border-radius: 10px;
  opacity: .2;
  -webkit-transition: all 2s ease-in-out;
  -moz-transition: all 2s ease-in-out;
  -o-transition: all 2s ease-in-out;
  transition: all 0.2s ease-in-out;
}

.close-btn:hover{
  opacity: .5;
}

/* Heading */
h1{
  font-family: 'Open Sans Condensed', sans-serif;
  position: relative;
  margin-top: 0px;
  text-align: center;
  font-size: 40px;
  color: #ddd;
  text-shadow: 3px 3px 10px #000;
}

/* Inputs */
a,
input,button{
  font-family: 'Open Sans Condensed', sans-serif;
  text-decoration: none;
  position: relative;
  width: 80%;
  display: block;
  margin: 9px auto;
  font-size: 17px;
  color: #fff;
  padding: 8px;
  border-radius: 6px;
  border: none;
  background: rgba(3,3,3,.1);
  -webkit-transition: all 2s ease-in-out;
  -moz-transition: all 2s ease-in-out;
  -o-transition: all 2s ease-in-out;
  transition: all 0.2s ease-in-out;
}

input:focus{
  outline: none;
  box-shadow: 3px 3px 10px #333;
  background: rgba(3,3,3,.18);
}

/* Placeholders */
::-webkit-input-placeholder {
   color: #ddd;  }
:-moz-placeholder { /* Firefox 18- */
   color: red;  }
::-moz-placeholder {  /* Firefox 19+ */
   color: red;  }
:-ms-input-placeholder {  
   color: #333;  }

/* Link */
a{
  font-family: 'Open Sans Condensed', sans-serif;
  text-align: center;
  padding: 1px 1px;
  
}

button{
  font-family: 'Open Sans Condensed', sans-serif;
  text-align: center;
  padding: 4px 8px;
  background: rgba(107,255,3,0.3);
}
a:hover{
  opacity: 0.7;
}
button:hover{
opacity: 0.7;
}

#remember-container{
  position: relative;
  margin: -5px 20px;
}

.checkbox {
  position: relative;
  cursor: pointer;
	-webkit-appearance: none;
	padding: 5px;
	border-radius: 4px;
  background: rgba(3,3,3,.2);
	display: inline-block;
  width: 16px;
  height: 15px;
}

.checkbox:checked:active {
	box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}

.checkbox:checked {
  background: rgba(3,3,3,.4);
	box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.5);
	color: #fff;
}

.checkbox:checked:after {
	content: '\2714';
	font-size: 10px;
	position: absolute;
	top: 0px;
	left: 4px;
	color: #fff;
}

#remember{
  position: absolute;
  font-size: 13px;
  font-family: 'Hind', sans-serif;
  color: rgba(255,255,255,.5);
  top: 7px;
  left: 20px;
}

#forgotten{
  position: absolute;
  font-size: 12px;
  font-family: 'Hind', sans-serif;
  color: rgba(255,255,255,.2);
  right: 0px;
  top: 8px;
  cursor: pointer;
  -webkit-transition: all 2s ease-in-out;
  -moz-transition: all 2s ease-in-out;
  -o-transition: all 2s ease-in-out;
  transition: all 0.2s ease-in-out;
}

#forgotten:hover{
  color: rgba(255,255,255,.6);
}

#forgotten-container{
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  margin: auto;
  width: 260px;
  height: 180px;
  border-radius: 10px;
  background: rgba(3,3,3,0.25);
  box-shadow: 1px 1px 50px #000;
  display: none;
}

.orange-btn{
  background: rgba(87,198,255,.5);
}
.footer {
  width: 10%;
  height: 5px;
  
  margin: ;
  text-align: center;
  color: #72A2D9
}

.right {
  padding: 10px;
}
</style>
</head>
<body>

<form action="login.jsp" method="get">
<div id="login-button">
  <img src="https://dqcgrsy5v35b9.cloudfront.net/cruiseplanner/assets/img/icons/login-w-icon.png">
  </img>
</div>
<div id="container">
  <h1>Log In</h1>
  <span class="close-btn">
    <img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
  </span>

  <form>
    <input type="text" name="name" placeholder="Id">
    <input type="password" name="password" placeholder="Password">
    <input type = "text" name = "captcha" placeholder="Code">
    <script type="text/javascript">
    function reloadCode() {
        var date = new Date().getTime();
        document.getElementById("code").src = "<%=request.getContextPath() %>/imageKaptcha?d="+date;
    }
</script>

     <img alt="验证码" src="imageKaptcha" id = "code"><a href = "javascript:reloadCode();">reflash code</a>
     
     
</form>

</form>
</td>
</tr>
    <button>LogIn</button>
    <div id="remember-container">
      <input type="checkbox" id="checkbox-2-1" class="checkbox" checked="checked"/>
      <span id="remember">Remember me</span>
      <span id="forgotten">Forgotten password</span>
    </div>
</form>
</div>

<!-- Forgotten Password Container -->
<div id="forgotten-container">
   <h1>Forgotten</h1>
  <span class="close-btn">
    <img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
  </span>

  <form>
    <input type="email" name="email" placeholder="E-mail">
    <a href="#" class="orange-btn">Get new password</a>
</form>
<script>
    $('#login-button').click(function(){
  $('#login-button').fadeOut("slow",function(){
    $("#container").fadeIn();
    TweenMax.from("#container", .4, { scale: 0, ease:Sine.easeInOut});
    TweenMax.to("#container", .4, { scale: 1, ease:Sine.easeInOut});
  });
});

$(".close-btn").click(function(){
  TweenMax.from("#container", .4, { scale: 1, ease:Sine.easeInOut});
  TweenMax.to("#container", .4, { left:"0px", scale: 0, ease:Sine.easeInOut});
  $("#container, #forgotten-container").fadeOut(800, function(){
    $("#login-button").fadeIn(800);
  });
});

/* Forgotten Password */
$('#forgotten').click(function(){
  $("#container").fadeOut(function(){
    $("#forgotten-container").fadeIn();
  });
});
</script>
</div>
<!--  <div class="footer">
  <div class="right">
    
    <a href="https://www.facebook.com/profile.php?id=100008152065270">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Facebook-128.png">
    </a>
    <a href=" https://twitter.com/HTERCUMANP">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Twitter-128.png">
    </a>
    <a href=" https://www.instagram.com/harunpehlivantebimtebitagem/">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Instagram-128.png">
    </a>
    <a href="https://www.youtube.com/user/harunpehlivan1">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Youtube-128.png">
    </a>
    <a href="http://plus.google.com/111320383727376607540/">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/googleplus-128.png">
    </a>
    <a href="https://www.linkedin.com/in/harun-pehlivan-0aa34252/">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Linckedin-128.png">
    </a>
    <a href="https://github.com/harunpehlivan">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/Git-128.png">
    </a>
    <a href="http://harunpehlivan.blogspot.com.tr">
      <img src="https://cdn2.iconfinder.com/data/icons/free-social-icons-1/200/w-128.png">
    </a>
  </div>-->
</form>
</body>
</html>
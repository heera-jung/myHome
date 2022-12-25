<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>myHome</title>
</head>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Alfa+Slab+One|Poiret+One|Lobster|Parisienne|Sriracha');

h1 {
	font-weight: bold;
	font-size: 75px;
	font-family: 'Lobster', cursive;
	text-align: center;
}


#welecome{
	font-size: 50px;
	font-family: 'Parisienne', cursive;
	text-align: center;
}

body {
	background-color: #bbeaf1;
}

#first, #second {
	width: 1500px;
	height: 465px;
	/* text-align: center; */
}

#topMenu {
	height: 20px;
	width: 100%;
}

#topMenu ul li {
	list-style: none;
	float: left;
	line-height: 20px;
	vertical-align: middle;
	text-align: center;
}
#topMenu ul li a{
	display : block;
	width: 100px;
	text-decoration: none;
	line-height : 43px;
}
#topMenu ul ul {
	position: absolute;
 	display: none;
}
#topMenu ul ul li{
	display: block;
	font-size: 15px;
	color : black;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}
#topMenu .menuLink {
	text-decoration: none;
	color: black;
	display: block;
	width: 15rem;
	font-size: 15px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}

#topMenu ul li a:hover{
	color : brown;
}

#second {
	width: 1300px;
	height: 1300px;
	background-color: #bbeaf1;
	margin: auto;
}

.shopList {
	box-shadow: 10px 10px #A79C8E;
	font-family: 'Poiret One', cursive;
	font-weight: bold;
	margin: auto;
	position: absolute;
}

#shop1 {
	margin-top : 70px;
	margin-left: 20px;
}

#shop2 {
	margin-top : 70px;
	margin-left: 690px;
}

#shop3 {
	margin-top : 350px;
	margin-left: 40px;
}

#shop4 {
	margin-top : 350px;
	margin-left: 650px;
}

img:hover {
	opacity: 0.5;
	filter: alpha(opacity = 50);
}
.yoyaku{
	font-weight: bold;
	background-color: black;
	color : white;
	position: absolute;
}

#yoyaku1{
	margin-top : 310px;
	margin-left: 83px;
}
#yoyaku2{
	margin-top : 310px;
	margin-left: 700px;
}
#yoyaku3{
	margin-top : 590px;
	margin-left: 100px;
}
#yoyaku4{
	margin-top : 590px;
	margin-left: 700px;
}
.call{
	font-weight: bold;
	position: absolute;
	font-family: 'Poiret One', cursive;
}
#call1{
	margin-top : 270px;
	margin-left: 235px;
	color : white;
	font-weight: bold;
	font-size: 50px;
	font-family: "Sriracha", cursive;
}
#call2{
	margin-top : 250px;
	margin-left: 935px;
	color : white;
	font-size: 50px;
	font-family: "Sriracha", cursive;
}
#call3{
	margin-top : 595px;
	margin-left: 150px;
}
#call4{
	margin-top : 595px;
	margin-left: 752px;
}
.banner{
	margin-top: 75px;
}
.banner {position: relative; width:2000px;  height: 430px; top: 40px;  margin:0 auto; padding:0; overflow: hidden;}
.banner ul {position: absolute; margin: 0px; padding:0; list-style: none;  width:386; height:430; }
.banner ul li {float: left; margin:0; padding:0;  width:386; height:430; }

.box {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   width: 400px;
   padding: 40px;
	background: rgba(0, 0, 0, .8);
   box-sizing: border-box;
   box-shadow: 0 15px 25px rgba(0, 0, 0, .5);
   border-radius: 10px;
   visibility: hidden;
}

.box h2 {
   margin: 0 0 30px;
   padding: 0;
	font-family: 'Poiret One', cursive;
	font-weight: bold;
	color:pink;
   text-align: center;
}

.box .inputBox {
   position: relative;
}

.box .inputBox input {
   width: 100%;
   padding: 10px 0;
   font-size: 16px;
   color: #fff;
   margin-bottom: 30px;
   border: none;
   border-bottom: 1px solid; # fff;
   outline: none;
   background: transparent;
}

.box .inputBox label {
 /*   position: absolute; */
   top: 0;
   left: 0;
   padding: 10px 0;
   font-size: 16px;
   color: #fff;
   pointer-events: none;
   transition: .5s;
}

.box .inputBox input:focus ~ label, .box .inputBox input:valid ~ label {
   top: -20px;
   left: 0;
	color : pink;
   font-size: 12px;
}

.box input[type="submit"], .box button[type="button"] {
   background: transparent;
   border: none;
   outline: none;
   color: #fff;
   background: pink;
   padding: 10px 20px;
   cursor: pointer;
   border-radius: 5px;
}


</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>

 $(document).ready(function() {
	var banner = $(".banner").find("ul");
	 var bannerWidth = banner.children().outerWidth();//배너 이미지의 폭
 	var bannerHeight = banner.children().outerHeight(); // 높이
 	var bannerLength = banner.children().length;//배너 이미지의 갯수
	var rolling = setInterval(function() { rollingStart(); }, 2000);

	banner.mouseover(function(){	//중지
		clearInterval(rolling);
		$(this).css("cursor", "pointer");
	});
	banner.mouseout(function(){
		rolling = setInterval(function() { rollingStart(); }, 2000);
		$(this).css("cursor", "default");
	});

	function rollingStart() {
		banner.css("width", bannerWidth * bannerLength + "px");
		banner.css("height", bannerHeight + "px");

		banner.animate({left: - bannerWidth  + "px"}, 1500, function() {
			$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
			$(this).find("li:first").remove();
			$(this).css("left", 0);
		});
	}
	$("#topMenu ul li").hover(function(){
		$(this).find("ul").stop().fadeToggle(300);
	});

	 $("#login").click(function(){
		 $("#a").css("visibility","visible");
	 });

	 $("#adminBt").click(function(){
		 $("#b").css("visibility","visible");
	 });
	 $("#homeBt").click(function(){
		 $("#b").css("visibility","hidden");
	 });

	 $("#logout").click(function(){
		location.href="com.tps.sample.action.MemberAction.java/logoutUser";
	 });
});

</script>

</head>
<body>
	<c:choose>
		<c:when test="%{#session.user==null}">
			<button onclick="location.href='login'" >login</button>
		</c:when>
		<c:otherwise>
			<button onclick="location.href='login'" >login</button>
			<button onclick="location.href='myInfo'" >MyInfo</button>
			<button id="logout">Logout</button>
		</c:otherwise>
	</c:choose>
	
	<h1>M Y &nbsp; H O M E</h1>

	<div id="first">
		<nav id="topMenu">
			<ul>
			<li><a class='menuLink' href='<c:url value="/goMain" />'  >TOP</a></li>
				<li><a class='menuLink' href='<c:url value="/Reservation_shibuya" />' >RESERVATION</a>
					<ul>
						<li><a href='<c:url value="/Reservation_shibuya" />' >SHIBUYA</a></li>
						<li><a href='<c:url value="/Reservation_harajuku" />' >HARAJUKU</a><li>
						<li><a href="#">ROPPONGI</a><li>
						<li><a href="#">SHINJUKU</a><li>
					</ul>
				</li>
				<li><a class='menuLink' href='<c:url value="/goHairLong" />' > HAIR</a>
					<ul>
						<li><a href='<c:url value="/goHairLong" />' >LONG</a></li>
						<li><a href='<c:url value="/goHairMid" />' >MEDIUM</a><li>
						<li><a href='<c:url value="/goHairShort" />' >SHORT</a><li>
					</ul>
				</li>
					<li><a class='menuLink' href='<c:url value="/Press" />' >STYLE</a></li>
 					<li><a class='menuLink' href='<c:url value="/lookReview" />' >CONTACT US</a></li>


		<s:if test="%{#session.user==null}">				<!-- login된 정보가 없으면 메뉴링크 -->
			<li><a class="menuLink" id="login" href="#">LOGIN</a></li>
		</s:if>
		<s:else>											<!-- login된 정보가 있으면 user 이름 -->
				<li><a>${sessionScope.user.name}:)</a></li>
		</s:else>
			</ul>
		</nav>
		<div class="banner">
			<ul>
				<li><img src="resources/img/blue1.png" width="386" height="430" /></li>
				<li><img src="resources/img/blue2.png" width="386" height="430" /></li>
				<li><img src="resources/img/blue3.png" width="386" height="430" /></li>
				<li><img src="resources/img/blue4.png" width="386" height="430" /></li>
				<li><img src="resources/img/blue5.png" width="386" height="430" /></li>
				<li><img src="resources/img/blue6.png" width="386" height="430" /></li>
				<li><img src="resources/img/blue8.png" width="386" height="430" /></li>
				
			</ul>
		</div>
	</div>
	<div id="second"><br><br><br>
	<p id="welecome">Welecome to My Home</p>
		<div class="shopList" id="shop1">
			SIGN UP <a href ='<c:url value="/goSignup" />'> <img src="resources/img/join_us2.gif" width="530" height="400" style="cursor:pointer" /></a>
		</div>
		<p class="call" id="call1">SIGN UP</p>

		<div class="shopList" id="shop2">
			 CONTACT US <img src="resources/img/coming.gif" width="530" height="400" style="cursor:pointer" />
		</div>
		<p class="call" id="call2">coming♥</p>

		<br><br><br><br><br><br>
		<!--  <div class="shopList" id="shop3">
			오는 길 <img src='<c:url value="/img/coming.gif" />' width='370' height='230' />
		</div>
		<button class="yoyaku" id="yoyaku3" type="button">예약</button>
		<p class="call" id="call3">CALL 03-6427-2180</p>
		<div class="shopList" id="shop4">
			SHINJUKU <img src='<c:url value="/img/shop4.png" />' width='370' height='230' />
		</div>
		<button class="yoyaku" id="yoyaku4" type="button">예약</button>
		<p class="call" id="call4">CALL 03-6467-8701</p>
	</div>-->

	<div class="box" id="a">
     <h2 id="th">Thank you for coming♥</h2>
      <s:form action="/loginUser" method="post">
         <div class="inputBox">
            <label>User ID</label><s:textfield name="user.userid"> </s:textfield>
         </div>
         <div class="inputBox">
            <label>Password</label><input type="password" name="user.passwd">
         </div>
         <s:submit value="Login"></s:submit>
         <button type="button" onclick="location.href='<c:url value="/goJoin" />'">Join </button>
	</s:form>
   </div>


   	<div class="box" id="b">
     <h2 id="th"> admin :)</h2>
      <s:form action="/loginAdmin" method="post">
         <div class="inputBox">
            <label>ID</label><s:textfield name="admin.id"> </s:textfield>
         </div>
         <div class="inputBox">
            <label>Password</label><input type="password" name="admin.passwd">
         </div>
         <s:submit value="Login"></s:submit>
         <button type="button" id="homeBt">HOME </button>
	</s:form>
   </div>

</body>
</html>
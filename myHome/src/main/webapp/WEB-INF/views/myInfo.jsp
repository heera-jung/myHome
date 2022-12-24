<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> MYHOME My info</title>

<style>
@import
	url('https://fonts.googleapis.com/css?family=Alfa+Slab+One|Poiret+One|Lobster|Parisienne|Sriracha');


h1 {
	font-weight: bold;
	font-size: 75px;
	font-family: 'Lobster', cursive;
	text-align: center;
}
p{
	font-family: 'Miriam Libre', cursive;
	font-size: 30px;
	text-align: center;
}
body {
	background-color: #bbeaf1;
}

#first {
	width: 1500px;
	height: 100px;
}
#second{
	width: 1700px;
	height: 700px;
	background-image: url(img/harajuku.png);

}
#name{
	border-radius: 25px;
	font-size: 20px;
	background-color: #a7a5a4c7;
	width:250px;
	height : 500px;
	position: absolute;
	margin-left: 200px;
	margin-top: 130px;
	text-align: center;
}

#name p {
	margin-top: 180px;
}

.third{
	width: 400px;
	height: 250px;
    border-radius: 25px;
	margin : 30px 20px 20px 20px;
	font-size: 20px;
	background-color: #a7a5a4c7;
	float : left;

}
.third p{
	margin-top: 90px;
	text-align: center;
}

#info{
	margin-left: 600px;
	margin-top: 100px;
}

#list{
	margin-left: 600px;
}
#infoCh{
	margin-top: 100px;
}

.bt{
	cursor: pointer;
	margin-left: 190px;
}



</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>

</script>

</head>

<body>
	<h1>M Y &nbsp; H O M E</h1>
	<div id="first">
	</div>
	<div id="second">
	<div id="name" ><p> ${sessionScope.user.name}, <br><br> Thank you for coming !  ;) </p>  </div>
		<div class="third"  id="info" style="float:left"><p>My info</p><button type="button" class="bt" onclick="location.href='<c:url value="myinfo" />'"> more! </button>
		</div>
			<div class="third" id="infoCh" style="float:left"><p>Update My info</p><button type="button" class="bt"  onclick="location.href='<c:url value="/goInfoCh" />'">more !</button> <br>
			</div>
				<div class="third" id="list" style="float:left"><p>Reservation List</p><button type="button" class="bt"  onclick="location.href='<c:url value="/reservationList?usernum=${sessionScope.user.usernum}" />'">more ! </button>
				</div>
				<div class="third" id="review" style="float:left"><p>Review</p><button type="button" class="bt" onclick="location.href='<c:url value="/lookReview" />'">more !</button>
				</div>
	  </div>
</body>
</html>
<%@page import="java.util.List"%>
 <!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login MyHome</title>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Alfa+Slab+One|Poiret+One|Lobster|Parisienne|Sriracha');

h1 {
	font-weight: bold;
	font-size: 75px;
	font-family: 'Lobster', cursive;
	text-align: center;
}
body {
	background-color: #ba4bd80f;
}

#first, #second {
	width: 1500px;
	height: 300px;
}
.box {
   position: absolute;
	top: 70%;
   left: 50%;
   transform: translate(-50%, -50%);
	width: 900px;
   height:700px;
   padding: 40px;
   background: #dfcde1cc;
   box-sizing: border-box;
   box-shadow: 0 15px 25px rgba(0, 0, 0, .5);
   border-radius: 10px;
}

.box h2 {
    margin: 0 0 30px;
   padding: 0;
	font-weight: bold;
	color:#f9869a;
	font-size : 40px;
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
   position: absolute;
   top: 0;
   left: 0;
   padding: 10px 0;
   font-size: 16px;
   color: #fff;
   pointer-events: none;
   transition: .5s;
}

#login-btn{
   background: transparent;
   border: none;
   outline: none;
   color: #fff;
   background: #f9869a;
   padding: 10px 50px;
   cursor: pointer;
   border-radius: 5px;
   margin-top: 30px;
}

#join-btn, #reset-btn {
   background: transparent;
   border: none;
   outline: none;
   color: #fff;
   background: #e9b0ba;
   padding: 10px 50px;
   cursor: pointer;
   border-radius: 5px;
   margin-top: 20px;
}

table{
	width:800px;
	height:120px;
	margin-left:auto;
	margin-right:auto;
}
table,tr {
	top: 70%;
   left: 50%;
}

td{
	text-align:center;
	
}
.input-box input{
	height:50px;
	width:300px;
	background:#ffffff54;
	border:1px solid white;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>

  $(document).ready(function() {
		var flag1 = false;
		var flag2 = false;
			$("#ch").click(function(){
				$.ajax({
					  type: 'POST',
					  url: '<s:url action="checkId" />',
					  data : {
						"user.userid":$("#ide").val()
					  },
					  dataType : 'json',
					  success: function(data){
						  if (data.userCt==1) {
							  alert("NO T-T");
							  $("#ide").forcus();
							  flag1=false;
						  } else {
							  alert("OK ^O^");
							 flag1=true;
						  }
					  }
				});
	    	});

    		$("#login-btn").click(function(){
     	             var idtext = document.getElementById("inputId");  //id
    	             var pwtext = document.getElementById("inputPw"); //pw
    	              var id = idtext.value;
    	              var pw = pwtext.value;

    	              $.ajax({
    					  type: 'POST',
    					  url: '<s:url action="checkLogin" />',
    					  data : {
    						"user.userid":$("#inputId").val()
    					  },
    					  dataType : 'json',
    					  async : false,
    					  success: function(data){
    						  if (data.userCt==1) {
    							  //$("#ide").forcus();
    							  flag2=false;
    						  } else {
    							 flag2=true;
    						  }
    					  }
    				});

    	             
    		 });

     });

    </script>

</head>
<body>
<h1>M Y &nbsp; H O M E</h1>
<div id="first">
</div>
<div id="second">
	<div class="box">
 	<h2>L&nbsp;O&nbsp;G&nbsp;I&nbsp;N</h2>
    <form action="/loginUser"  method="post" name="data" id="f">
	    <table>
	        <tr>
	            <td>
	            	<div class="input-box"><input type="text" placeholder="ID" id="inputId"></div>
	            </td>
	        </tr>
			<tr>
	            <td>
	            	<div class="input-box"><input type="text" placeholder="PASSWORD" id="inputPw"></div>
	            </td>
	        </tr>

	     </table>
	     <br/>
	    <div align ="center">
	    	<button id="login-btn" >LOGIN</button>
	    </div>
	     <div align ="center">
	    	<button id="join-btn" >JOIN US</button>
	        <button id="reset-btn">RESET PW</button>
	    </div>
	</form>
  </div>
</div>

</body>
</html>






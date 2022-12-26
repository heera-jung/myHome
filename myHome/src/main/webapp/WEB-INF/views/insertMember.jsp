
<%@page import="java.util.List"%>
 <!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Insert Member</title>
    <style>
@import
	url('https://fonts.googleapis.com/css?family=Alfa+Slab+One|Poiret+One');
h1 {
	font-weight: bold;
	font-size: 70px;
	font-family: 'Alfa Slab One', cursive;
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
   background: #bdb7b6cc;
   box-sizing: border-box;
   box-shadow: 0 15px 25px rgba(0, 0, 0, .5);
   border-radius: 10px;
}

.box h2 {
     margin: 0 0 30px;
   padding: 0;
	font-family: 'Abril Fatface', cursive;
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

#ss, #home {
   background: transparent;
   border: none;
   outline: none;
   color: #fff;
   background: #f9869a;
   padding: 10px 20px;
   cursor: pointer;
   border-radius: 5px;
   margin-top: 30px;
}

#ch {
   background: transparent;
   border: none;
   outline: none;
   color: #fff;
   background: #f9869a;
   cursor: pointer;
   border-radius: 5px;
}



table th tr {
	top: 70%;
   left: 50%;
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

    		$("#ss").click(function(){
     	              var idtext = document.getElementById("ide");  //아이디의 id값
    	             var nametext = document.getElementById("name"); //이름의 id값

    	              var id = idtext.value;
    	              var name = nametext.value;

    	              var regExp1 = /^[a-zA-Z0-9]{4,12}$/;  //id와 비밀번호의 유효성 검사
    	              var regname = /^[가-힝]{2,}$/; //이름의 유효성 검사

    	              $.ajax({
    					  type: 'POST',
    					  url: '<s:url action="checkId" />',
    					  data : {
    						"user.userid":$("#ide").val()
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

    	              if(!regExp1.test(id))
    	               //아이디 유효성 검사 후 4~12자의 영문 대소문자와 숫자의 유효성이 안 맞다면
    	               //공백을 주고 알람을 띄운다.
    	               //밑에 동일한 유효성 검사
    	              {
    	                  alert("Enter a valid ID");
    	                  idtext.value = "";
    	                  idtext.focus();
    	                  return false;
    	              }
    	               else if(!flag1 || !flag2){
    	            	  alert("NO  !!  Duplicate ID");
    	            	  idtext.value = "";
    	                  idtext.focus();
    	                  return false;
    	              }

    	              else
    	              {
    	                     alert(" :)");
    	                  	$("#f").submit();
    	               }
    		 });

     });

    </script>

</head>
<body>

<h1>A L B U M</h1>
	<div id="first">
	</div>
	<div id="second">
	<div class="box" id="a">
 	<h2 id="th">ALBUM  MEMBER</h2>
    <s:form action="/insertMember"  method="post" name="data" id="f">
    <table name="data" width="800" height="230" border="1" align ="center">
        <tr>
            <td align ="center" > ID </td>
            <td><s:textfield name="user.userid" id="ide" size="20" maxlength="12"/>&emsp;<button id="ch" type="button" >CHECK</button>
            Enter 4 to 12 English and numeric characters only</td>
        </tr>

         <tr>
            <td align ="center">PHONE NUMBER</td>
            <td><s:textfield name="user.phone" id="cpass" size="20" maxlength="12" /></td>
        </tr>

        <tr>
            <td align ="center">NAME</td>
            <td ><s:textfield name="user.name"  id="name" size="20" /></td>
        </tr>

    </table><br />
    <div align ="center">
    	 <button type ="button" id="ss" >SUBMIT</button>
        <button type="button" id="home" onclick="location.href='<c:url value="/goAdminMain" />'">HOME</button>
    </div>
		</s:form>
  </div>
   </div>

</body>
</html>






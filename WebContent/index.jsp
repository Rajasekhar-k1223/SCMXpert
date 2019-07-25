<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SCMXpert Dashboard</title>
  
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <jsp:include page="./View/jsfiles.jsp" />
   <script src="./js/bCrypt.js"></script>
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/global.css"/> -->
</head>
<script src="./js/RouteMaster.js"></script>
<body style="background: url(./images/scm_back.jpg) no-repeat center center fixed;-webkit-background-size: cover;-moz-background-size: cover;-o-background-size: cover;background-size: cover;">
<header>
<script>
function result(hash){
	$("#hash").val(hash);
	  var encrpt_val = $("#hash").val();
	  console.log(encrpt_val);
	  loginToDashboard(encrpt_val);
	}
	function crypt(){
		var salt;
		
		if($("#salt").val().length != 0){
		salt = $("#salt").val();
		}else{
			try{
	    	salt = gensalt($("#rounds").val());
			}catch(err){
	    	alert(err);
	    	return;
			}
			$("#salt").val(salt);
		}
	  try{
	  	$("#progressbar").progressbar({ value: 0 });
			hashpw(
				$("#password").val(),
				$("#salt").val(),
				result);
	  }catch(err){
	    return;
	  }
	}
/* function loginToDashboard(encrpt_val)
{
		var username = $("#username").val();
		//http://localhost:8087/oauth/token
		/* username:exa@exafluence.com
		password:encrpt_val
		grant_type:password 
		Content-Type:application/x-www-form-urlencoded
		 headers: {
			 'Content-Type': "application/x-www-form-urlencoded" 
		 }
			    'Authorization': "Basic " + btoa(USERNAME + ":" + PASSWORD)=>client+secret
			  }
		
		var update_json_data = {"username":username,
				"password":"$2a$10$ZAm9Ef7R76N90/kTjuwboeF8n0MoNIyCoautXyR11hOl0MZkMG4JC",
				"grant_type":"password"};
		//alert(JSON.stringify(update_json_data));
		var url = "http://localhost:8087/oauth/token";
		var secret = "secret";
		var client = "client";
		$.ajax({
			type:"post",
			url:url,
			/* beforeSend: function(request) {
			    request.setRequestHeader("Authorization", "Basic "
			            + secret + ":" + client);
			  }, */
			  
			/* headers:{
				Accept : "application/x-www-form-urlencoded",
				'Content-Type': "application/x-www-form-urlencoded",
				'Authorization': "Basic " + btoa(client + ":" + secret)
			}, 
			beforeSend: function (xhr) {
	            xhr.setRequestHeader ("Authorization", "Basic " + btoa(client + ":" + secret));
	          },
		data: update_json_data,
		success:function(response){
			 alert(response);
		 }
		});
} */
function loginToDashboard(encrpt_val)
{
	/* var form = new FormData();
	form.append("username", "exa@exafluence.com");
	form.append("password", "$2a$10$ZAm9Ef7R76N90/kTjuwboeF8n0MoNIyCoautXyR11hOl0MZkMG4JC");
	form.append("grant_type", "password");

	console.log(form)
	var settings = {
	  "async": true,
	  "crossDomain": true,
	  "url": "http://localhost:8087/oauth/token",
	  "method": "POST",
	  "headers": {
	    "Content-Type": "application/x-www-form-urlencoded",
	    "Authorization": "Basic Y2xpZW50OnNlY3JldA=="
	   
	  },
	  "processData": false,
	  "contentType": false,
	  "mimeType": "multipart/form-data",
	  "data": form
	}

	$.ajax(settings).done(function (response) {
	  console.log(response);
	});	 */
	
	$.ajax({
		 async: true,
		  crossDomain: true,
	 
	    url: "http://localhost:8087/oauth/token",
	    withCredentials: true,
	   /*  beforeSend: function(xhr) {
	        xhr.setRequestHeader("Content-Type", "application/json");
	        xhr.setRequestHeader("Accept", "application/json");
	    }, */
	    dataType: "json",
	    headers: {
	        "Content-Type": "application/x-www-form-urlencoded",
	        "Authorization": "Basic Y2xpZW50OnNlY3JldA==",
	      
	      }, 
	    data: 'grant_type=password&username=exa@exafluence.com&password='+encrpt_val,
	      
	    type: "POST",
	    success: function(response) {
	        token = response.access_token;
	        token_type = response.token_type;
	        expiresIn = response.expires_in;
	       /*  $.ajax({
	        	async: true,
	        	crossDomain: true,
				method:"Get",
	        	url: "http://localhost:8080/SCMXPert/getAllRoles",
	        	headers: {
	        		Accept : "application/json",
					'Content-Type': "application/json",
					'Access-Control-Allow-Origin':'*',
	        	    "Authorization": "Bearer "+token
	        	  },
	            success: function(data){
	                console.log("hello"+data)
	              },
	             error: function(jqXHR, textStatus, errorThrown)   {
	                            console.log("hi"+textStatus);
	                        }

	        }); */
	        $.ajax({
	     		url: "http://localhost:8080/SCMXPert/getAllRoles",
	        	type: "GET",
	        	dataType: "json",
	        	headers: {
	        	    "Authorization": "Bearer "+token
	        	  },
	        	success: function (data) {
	        	            //save data into a variable
							console.log(data);
	        	        }
	        	    });
	    },
	    error: function(errorThrown) {
	    
	        console.log(errorThrown)
	    }
	});
	
}
</script>
<div class="float-left" style="width:73%;">
  <a href="#" style="width:70px;height:65px;float:left;"><img src="./images/Capture_scm_half_logo_1.png" style="width: 50px;margin-left: 45px;margin-top: 7px;"/></a>
  
<!--   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button> -->

  
    <!-- <ul class="navbar-nav">
      <li class="nav-item m-1">
        <a class="p-2 pr-5 pl-5 active" href="#">Shipments</a>
      </li>
      <li class="nav-item m-1">
        <a class="p-2 pr-5 pl-5" href="#">Devices</a>
      </li>
      <li class="nav-item m-1">
        <a class="p-2 pr-5 pl-5" href="#">Alerts</a>
      </li>
      <li class="nav-item m-1">
        <a class="p-2 pr-5 pl-5" href="#">Reports</a>
      </li>
      <li class="nav-item m-1">
        <a class="p-2 pr-5 pl-5" href="#">Setup</a>
      </li>
    </ul> -->
    
  
</div>

<div class="w-25 float-left"> 

<span class="site-title"><a href="#" style="text-align: center;margin-right:0px;margin-left: -60px;float:left;">SCMXPERT</a></span>
 
</div>
 
</header>
<div style="clear:both;"></div>

<div class="row m-0 grow" style="padding-top: 5%;padding-right: 4%;">
<div class="col-sm-9 col-md-3" style="border: 1px solid;border-radius: 5%;background: #fff;box-shadow: 0px 0px 49px #4e2e2ebd;margin-top: 6%;margin:auto;">
<div class="row mt-4 mb-4">
<div class="col-md-10 m-auto">
	<h3 class="text-center">
	<img src="./images/Capture_scm_half_logo_1.png" style="width: 55px;height: 55px;border-radius: 63%;border: 1px solid #a52a2a4a;"/><br><span style="color: white;text-shadow:1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue">Login</span>
	</h3>
<div class="form-group">
<label for="username">UserName </label>
<input type="text" name="username" class="form-control" id="username" placeholder="User Name" autocomplete="off"/>
</div>
<div class="form-group">
<label for="password">Password</label>
<input type="password" name="password" id="password" placeholder="Password" class="form-control"/>
</div>
<div class="form-group text-center mt-4">
<button class="btn btn-info" id="login" onclick="javascript:crypt();">Submit</button>
</div></div>
</div>

 
</div>
</div>
<input size=60 type="hidden" name="hash" id="hash" READONLY>
<select id="rounds" name="rounds" style="display:none;">
  <option value=4>5</option>
</select>
<input size=30 type="hidden" name="salt" id="salt">
</body>
</html>
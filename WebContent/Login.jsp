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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/global.css"/>
</head>
<body style="background: url(./images/scm_back.jpg) no-repeat center center fixed;-webkit-background-size: cover;-moz-background-size: cover;-o-background-size: cover;background-size: cover;">
<header>
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

<form action="Dashboard.jsp" method="post">
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
<button class="btn btn-info">Submit</button>
</div></div>
</div>

 
</div>
</div>
</form>
</body>
</html>
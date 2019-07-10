<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="./View/jsfiles.jsp" />
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<link rel="stylesheet" href="./css/global.css"/>
<link rel="stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"/>
<link rel="stylesheet" href = "https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
<script rel="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script rel="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script rel="javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src=" https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
 <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
   <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet"/>  -->
<script src="./js/jquery.cookie.js"></script>
<script src="./js/All.js"></script>
<script src="./js/CommonFunction.js"></script>
<script src="./js/Devices.js"></script>
</head>
<body>
<jsp:include page="./View/header.jsp" />
 <h2 style="text-align:center;margin:0px;"><img src="./images/Capture_scm_half_logo_1.png" style="width:50px;height:50px;"> Receive Device</h2>
 
 <div class="container">
 <div class="row">
 
 <div class="col-sm-12 col-md-12 col-lg-12 text-center">
<div class="row text-center">

<div class="col-sm-12 col-md-12 col-lg-12"><a href="Dashboard.jsp"><button class="btn btn-dark float-right" style="padding:5px 15px;font-size: 12px;font-weight: 600;margin-right: 12%;">Back</button></a></div>

<div id="error"></div>
	<div class="col-sm-12 col-md-8 col-lg-8 p-2 m-auto" >
	<div style="border-radius:3px;padding:1%;background:linear-gradient(180deg, rgba(255, 255, 255, 1) 0%, rgba(242, 242, 242, 1) 0%, rgba(228, 228, 228, 1) 100%, rgba(255, 255, 255, 1) 100%);border:1px solid #000;">
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Internal Transfer Id :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Internal Transfer Id" id=internalTransferId style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Customer Name :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Customer Name" id="Cust_Id" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Partner Name :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Partner Name" id="bp_name" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		</div>
	</div>
</div></div>
 
 	<div class="col-sm-12 col-md-6 col-lg-6 mt-3 m-auto" >
	<div class="col-sm-12 col-md-12 col-lg-12 text-center p-0">

			<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Number of devices :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Number of devices" style="margin-right:2px;height:25px;font-size: 12px;width:49%;float:left;" id="numofDev" disabled="disabled"/><select class="form-control pr-0 pt-1 pl-1 pb-0" id="listOfDevices" style="width:50%;height:25px;font-size: 12px;float:left;"></select></span></div>	

			<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Tracking Number :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Tracking Number" style="height:25px;font-size: 12px; " id="trackingNo"/></span></div>	

			<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Courier Company :</span><span class="float-left" style="width:45%;"><select class="form-control" id="courierCompList" name="courierCompList" style="height:25px;font-size: 12px;padding-top: 3px;"><option value="">Select Option</option>
			<option value="DHL Express">DHL Express</option>
			<option value="FedEx">FedEx</option>
			<option value="United Parcel Service, Inc">United Parcel Service, Inc</option>
			<option value="Blue Dart">Blue Dart</option>
			<option value="Royal Mail">Royal Mail</option>
			<option value="Schenker AG">Schenker AG</option>
			<option value="PostNL">PostNL</option>
			<option value="YRC Worldwide">YRC Worldwide</option>
			<option value="Japan Post Group">Japan Post Group</option>
			<option value="DTDC">DTDC</option></select></span><span class="ml-1"></div>

			<div style="width: 100%;height: 50px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Transfer Description :</span><span class="float-left" style="width:45%;"><textarea class="form-control" placeholder="Transfer Description" id="transDesc" style="height:45px;font-size: 12px;"></textarea></span></div>	

			<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Origin :</span><span class="float-left" style="width:45%;"><select class="form-control"  id="event_from" name="routes" style="height:25px;font-size: 12px;padding-top: 3px;width:87%;float:left;"><option value="">Select Option</option></select><span class="bg-color add" style="float:left;margin-left:3px;padding: 3px 10px;border-radius: 3px;color:#fff;font-weight:bold;font-size:12px;">+</span></span></div>

			<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Destination City :</span><span class="float-left" style="width:45%;"><select class="form-control" id="event_to" name="routes" style="height:25px;font-size: 12px;padding-top: 3px;width:87%;float:left;"><option value="">Select Option</option></select><span class="bg-color add" style="float:left;margin-left:3px;padding: 3px 10px;border-radius: 3px;color:#fff;font-weight:bold;font-size:12px;">+</span></span></div>

			<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Receiving Partner :</span><span class="float-left" style="width:45%;"><select class="form-control" id="event_partner_from" name="routes" style="height:25px;font-size: 12px;padding-top: 3px;"><option value="">Select Option</option></select></span><span class="ml-1"></div>

			<div style="width: 100%;height: 50px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Destination Address :</span><span class="float-left" style="width:45%;"><textarea class="form-control" placeholder="Address" style="height:45px;font-size: 12px;"></textarea></span></div>

			<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Date of Transfer :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Date of Transfer" id="transferDate" style="height:25px;font-size: 12px; "/></span><span class="ml-1"></div>

			<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Date of Receipt :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Expected Date" id="expected_date" style="height:25px;font-size: 12px; "/></span><span class="ml-1"></div>

			<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Person Receiving :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Person Receiving" id="personReceiving" style="height:25px;font-size: 12px; "/></span></div>

			<div style="width: 100%;height: 50px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Receipt Description :</span><span class="float-left" style="width:45%;"><textarea class="form-control" placeholder="Receipt Description" style="height:45px;font-size: 12px;"></textarea></span></div>

		</div>

<div class="col-sm-12 col-md-12 col-lg-12 text-center m-2">
	<div class="w-100 p-3"></div>
	<div>
			<button class="bg-color margin-rl1 btn-head"> Cancel Receive Device </button>
			<button class="bg-color margin-rl1 btn-head"> Reset </button>
			<button class="bg-color margin-rl1 btn-head" onclick="javascript:createReceiveDevices();"> Create / Update Receive Device </button>
		</div>
</div>
		</div>
		</div>
		</div>
		<footer></footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SCMXpert Complete Shipment</title>
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
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script> -->
<script src="./js/jquery.cookie.js"></script>
<script src="./js/completeShipment.js"></script>
</head>
<body>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<jsp:include page="./View/header.jsp" />

<div style="clear:both;width:100%;height:70px;"></div>
<h2 style="text-align:center;"><img src="./images/Capture_scm_half_logo_1.png" style="width:50px;height:50px;"> Complete Shipment</h2>

<div class="container">
<div class="row">
<div class="col-sm-12 col-md-12 col-lg-12 text-center">
<div class="row text-center">
<div class="col-sm-12 col-md-12 col-lg-12"><a href="Dashboard.jsp"><button class="btn btn-dark float-right" style="min-height: 20px;padding: 4px 8px;font-size: 11px;margin-right:15%;">Back</button></a></div>
	<div class="col-sm-12 col-md-6 col-lg-6 p-2 m-auto" >
	<div style="border-radius:3px;padding:1%;background:linear-gradient(180deg, rgba(255, 255, 255, 1) 0%, rgba(242, 242, 242, 1) 0%, rgba(228, 228, 228, 1) 100%, rgba(255, 255, 255, 1) 100%);border:1px solid #000;">
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Shipment Id :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Shipment Id" id="shipment_id" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Shipment Number :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Shipment Number" id="shipment_number" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Type of Reference :</span><span class="float-left" style="width:45%;"><select class="form-control"  style="height:25px;font-size: 11px;font-weight:bold;padding-top:2px;" id="typeOfReferences" disabled="disabled"><option>Select Type Reference</option></select></span></div>
		<div style="width: 100%;height: 60px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Shipment Description :</span><span class="float-left" style="width:45%;"><textarea class="form-control" placeholder="Enter Your Description"  style="height:55px;font-size: 12px;font-weight:bold;padding-top:1px;" disabled="disabled"></textarea></span></div>
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Connected Device :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Connected Device" id="connected_device" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		</div>
	</div>
</div></div>
<div class="col-sm-12 col-md-12 col-lg-12">
	<div class="col-sm-12 col-md-6 col-lg-6 p-0 text-center m-auto">
		<div class="" id="" style="padding:1%;border-radius:3px;width:100%;height:225px;border:1px solid #000;">
		<div style="height:185px;width:100%;overflow-y:auto;">
			<table class="" id="inboxesvalues">
				<thead>
					<tr>
						<th></th>
						<th>Event Id</th>
						<th>Partner</th>
						<th>Event</th>
						<th>Date</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			</div>
			<div class="w-100"><span class="" style="background:#ccd0d4;width:100%;height:27px;float:right;"><img src="./images/below.png" id="btnSubmit" onclick="javascript:moveDown();" style="width:23px;margin-left: 7%;margin-top: 3px;"></span><span style="clear:both;"></span></div>
		</div>
			
		
	</div></div>
	<div class="col-sm-12 col-md-12 col-lg-12 mt-3" >
	<div class="col-sm-12 col-md-6 col-lg-6 text-center m-auto">
	<div id="error"></div>
	<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Event Id :</span><span class="float-left" style="width:35%;"><input type="text" class="form-control" placeholder="Event Id" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled" id="event_id_val"/></span></div>
	<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Event :</span><span class="float-left" style="width:35%;"><input type="text" class="form-control" placeholder="Event Type " style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled" id="event_type_val" /></span></div>
	<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Partner :</span><span class="float-left" style="width:35%;"><select class="form-control" placeholder="Partner From" style="height:25px;font-size: 12px;font-weight:bold;padding-top: 2px;" id="event_partner_from" ><option value=''>Select Partner</option></select></span></div>
	<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Receiving Location :</span><span class="float-left" style="width:35%;"><select class="form-control" style="height:25px;font-size: 12px;font-weight:bold;padding-top:2px;" id="routes"><option value="">Select Location</option></select></span></div>
	<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Receiving Reference :</span><span class="float-left" style="width:35%;"><input type="text" class="form-control" placeholder="Event Reference" style="height:25px;font-size: 12px;font-weight:bold;" id="event_reference"/></span></div>
	<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Type of Reference :</span><span class="float-left" style="width:35%;"><select class="form-control" style="height:25px;font-size: 11px;font-weight:bold;padding-top:2px;" id="typeOfReferences1"><option value="">Select Type Reference</option></select></span></div>
	<div style="width: 100%;height: 60px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Receiving Description :</span><span class="float-left" style="width:35%;"><textarea class="form-control" placeholder="Receiving Description" style="height:55px;font-size: 12px;font-weight:bold;padding-top:2px;" id="event_description"></textarea></span></div>
	<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Device Return Location :</span><span class="float-left" style="width:35%;"><select type="text" class="form-control" style="height:25px;font-size: 12px;font-weight:bold;padding-top:2px;" id="return_location"><option value="">Select Location</option></select></span></div>
	</div></div>
	<div class="col-sm-12 col-md-12 col-lg-12 text-center m-2">
	<div>

			<button class="btn btn-color" style="min-height: 20px;padding: 4px 8px;font-size: 11px;margin: 0px;" id="cancel_receipt" onclick="javascript:CancelReceipt();">Cancel Receipt</button>
			<button class="btn btn-color" style="min-height: 20px;padding: 4px 8px;font-size: 11px;margin: 0px;" id="reset" onclick="javascript:reset();">Reset</button>
			<button class="btn btn-color" style="min-height: 20px;padding: 4px 8px;font-size: 11px;margin: 0px;" id="completeShipment" onclick="javascript:CompleteShipment();">Complete Shipment</button>
			
		</div>
		
	</div>
	
</div></div>

<footer></footer>
      <div class="body_blur"></div>
       <div class="AddEventBlock">
       	<h3 style="text-align:center;width:94%;float:left;padding-top:2%;">Add Partner Event</h3><span class="close" style="width: 2.7%;height: 25px;float: left;padding: 1% 3% 1% 0%;">X</span><span style="clear:both;"></span>
      	<input type="text" name="eventId" id="eventId"  placeholder="Enter Event Id Like E0011" style="margin-top: 1rem; text-align: center;width: 60%;padding-top: 2%;margin: 0% 20%;height: 25px; padding-top: 2px; font-size: 12px; padding-bottom: 2px;font-weight: 600; border-radius: 4px; border: 1px solid #ced4da; margin-bottom: 4px;" />
      	<select class="form-control" id="selectvalues" style="margin-top:1rem;text-align: center;width: 60%;padding-top: 2%;margin: auto;height: 25px;padding-top: 2px;font-size: 12px;padding-bottom: 2px;font-weight: 600;" onchange="javascript:selectBpName(this.value);"><option>Select Partner</option></select>
      	<div style="width:100%;height:4px;"></div>
      	<select class="form-control" id="eventslist" style="margin-top:1rem;text-align: center;width: 60%;padding-top: 2%;margin: auto;height: 25px;padding-top: 2px;font-size: 12px;padding-bottom: 2px;font-weight: 600;"><option value="">Select Event</option></select>
      	<button id="CancelEvent" class="btn-color" style="height:25px;font-size:12px;font-weight:600;margin: 2% 20%;border-radius:5px;border:1px solid #17a2b8;" >Cancel Event</button>
      	<button id="AddEvent" class="btn-color" style="height:25px;font-size:12px;font-weight:600;margin: 2% 0%;border-radius:5px;border:1px solid #17a2b8;" onclick="javascript:addEvent();">Add Event</button>
      	
      </div>

</body>
</html>
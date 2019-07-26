<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SCMXpert/Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="./View/jsfiles.jsp" />
</head>
<body>
<script src="./js/Dashboard.js"></script>
          <!-- Javascript -->
<img src="./images/loading.gif" id="loadingimg"/>
<div class="dashboard_page">
<jsp:include page="./View/header.jsp" />

<!-- <div style="clear:both;width:100%;height:60px;"></div> -->

<div class="row w-100 m-0 mb-3" style="background:#cbcdce52;">
	<div class="col-md-5 float-left pl-2 p-0" style=";position:fixed;">
	<div class="w-100" style="padding: 2px;"></div>
	<div style="">
	<div class="my-div-main"><span class="btn live my-btn " style="border-radius:3px 0px 0px 0px;border:0px solid;font-weight: bold;">Live <sup class="live_show_list_items bg-color"></sup></span><span class="btn delivered my-btn" id="delivered" style="border:0px solid;border-radius: 0px 3px 0px 0px;margin-left: 1px;font-weight: bold;">Delivered <sup class="delivery_show_list_items bg-color"></sup></span><span class="btn font-color float-right createshipmentfont" style="padding: 0.1rem 0.75rem;border-radius:3px 3px 0px 0px;border:0px solid;">
	 <div class="my-div">
                    <span class="btn btn-outline-info float-right createshipmentfont" style="padding: 0.1rem 0.75rem;border-radius:3px 3px 0px 0px;border:0px solid;">
                        <div id="createshipment_link" class="bg-color"><i class="fa fa-plus-circle"></i> Create Shipment</div>
                    </span>
                </div>
	<!-- <div id="createshipment_link btn-color" style="font-weight: bold;" onclick="javascript:createshipmentlink();">Create Shipment</div> -->
	</span></div>
	<!-- <div class="hide_show_icon btn-outline-dark" style="padding:1%;font-size:10px;border-radius:5px;">Show Filter</div>
	<div class="show_hide_icon btn-outline-dark" style="padding:1%;font-size:10px;border-radius:5px;">Hide Filter</div> -->
	<div class="hide_show_icon btn-outline-dark btn-filter" style="padding:1%;font-size:10px;border-radius:5px;"><i class="fa fa-eye"></i> Show Filter</div>
                <div class="show_hide_icon btn-outline-dark btn-filter" style="padding:1%;font-size:10px;border-radius:5px;"><i class="fa fa-eye-slash"></i> Hide Filter</div>
	<div style="clear:both;"></div>
	</div>

<div class="show_hide_filter" style="min-height:120px;">
	<div id="error_filter"></div>
	<div class="float-left p-1" style="width:20%;"> 
		<label class="cols-label font-weight-bold">From : </label>
		<input type="text" class="form-control" id="from" placeholder="Enter Your Location" style="font-size: 10px;height: 22px;padding: 1px;padding-left: 5px;" autocomplete="off"/>
	</div>
	<div class="float-left p-1" style="width:20%;"> 
		<label class="cols-label font-weight-bold">To: </label>
		<input type="text" class="form-control" id="to" placeholder="Enter Your Location" style="font-size: 10px;height: 22px;padding: 1px;padding-left: 5px;" autocomplete="off"/>
	</div>
	<div class="float-left p-1" style="width:20%;"> 
		<label class="cols-label font-weight-bold">Goods : </label>
		<select style="font-size: 10px;height: 22px;padding: 1px;padding-left: 5px;" id="selectgoods" class="form-control">
			<option style="font-size:12px;" value="">Select Any Goods</option>
		</select>
	</div>
	<div class="float-left p-1" style="width:20%;"> 
		<label class="cols-label font-weight-bold">Ship Date : </label>
		<input type="text" class="form-control" id="datepicker-13" placeholder="Select Date" style="font-size: 10px;height: 22px;padding: 1px;padding-left: 5px;" autocomplete="off"/>
	</div>
	<div class="float-left p-1" style="width:20%;"> 
		<label class="cols-label font-weight-bold">Delivery Number : </label>
		<input type="text" class="form-control" placeholder="Enter Delivery Number" id="delivery" style="font-size: 10px;height: 22px;padding: 1px;padding-left: 5px;" autocomplete="off"/>
	</div>
	<div class="float-left p-1" style="width:20%;"> 
		<label class="cols-label font-weight-bold">Reference : </label>
		<input type="text" class="form-control" placeholder="Enter Your Reference" id="reference" style="font-size: 10px;height: 22px;padding: 1px;padding-left: 5px;" autocomplete="off"/>
	</div>
	<div class="float-left p-1" style="width:20%;"> 
		<label class="cols-label font-weight-bold">Device : </label>
		<select style="font-size: 10px;height: 22px;padding: 1px;padding-left: 5px;" id="devices" class="form-control">
			<option style="font-size:12px;" value="">Select Any Device</option>
		</select>
	</div>
	<div class="float-left p-1" style="width:20%;"> 
		<label class="cols-label font-weight-bold">Dept / Type : </label>
		<select style="font-size: 10px;height: 22px;padding: 1px;padding-left: 5px;" id="departments" class="form-control">
			<option style="font-size:12px;" value="">Select Any Dept/Type</option>

		</select>
	</div>
	<div class="float-left" style="width:40%;padding-top:6.2%;"> 
		<label class="cols-label font-weight-bold"> </label>
		<button class="btn bg-color" style="font-size: 11px;margin: 2px;float: left;height: 22px;line-height: 10px;font-weight: bold;padding: 5px;" id="submit" onclick="javascript:seachfilter();"><i class="fa fa-search"></i> Search</button>
                    <button type="reset" class="btn bg-color" style="font-size: 11px;margin: 2px;width: 30px;float: left;height: 30px;line-height: 10px;font-weight: bold;padding: 5px;margin-left: 12%;" id="reset" onclick="javascript:resetform();"><i class="fa fa-repeat"></i></button>

		</select>
	</div>
	<div class="clear:both;"></div>
	</div>
		<div class="meter animate">
	<span style="width: 50%"><span></span></span>
</div>
	<div class="live_shipments"></div>
	<div class="delivered_shipments"></div>
</div>
<div class="showviewdata">
<h3 style="width:96%;float:left;text-align:center;">Heading</h3><span class="close" style="margin:1%;width:2%;float:left;cursor:pointer;text-align: center;">X</span>
<div style="clear:both;"></div>
<div class="view_body_header">
<!-- <div class="device_id" style="float:left;">ID:- 122345679</div>
<div class="device_f_t" style="float:left;"> From:- sxjkcvhksj  To:- kjhsdbfvjsdfg</div>

	<div class="nodes">Maps</div>
	<div class="nodes">Explore</div>
	<div class="nodes">Messages</div>
	<div style="clear:both"></div> -->
</div>
<div class="view_body_boder"></div>





</div>

<div class="col-md-7 float-left" style="padding-left:0px;padding-right:1px; position:absolute;right:0px;">
	<!-- <img src="./images/maps.jpeg" style="width:100%;height:350px;" id="two"> -->
	<div class="showmap">
		<div id="map" style="width:100%;height:450px;z-index:1;"></div>
	</div>
	<div class="info" style="width:100%;z-index:1;display:none;overflow-y:auto;scrollbar-width: thin;border-left:2px solid #000;">
	<div class="info_attached">
	<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#home" id="home_info">Info</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#map_menu1" id="mapShowInfoTab">Map</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#data_menu2" id="data_info">Data</a>
  </li>
</ul>
</div>
  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
     	<div class="row" style="background: lightgray;padding: 5px;margin: 0px;border-radius: 2px;margin-top: 5px;">
     		<div class="col-md-2 mt-1 p-0 shortsMenu_update_complete">
     			
     		</div>
     		
     		<div class="col-md-10">
     			<div class="shipment_name"></div>
     		</div>
     	</div>
     	<div style="height:290px;overflow-y:auto;width:100%;">
      	<table class="table table-striped table-bordered draftTableaa" id="shipmentdatalistshow" style="overflow-x:auto;font-size:11px;margin-top:1%;">
			<thead class="bg-color" style="color:#fff;">
				<tr>
					<th>Delivery No.</th>
					<th>Device Id</th>
					<th>Event Name</th>
					<th>BP Id </th>
					<th>Internal Temp.</th>
					<th>Date</th>
					<th>Mode Of Transport</th><th> <span id="addChangeFilterList"><i class="fa fa-plus-circle"></i></span></th>					
				</tr>
			</thead>
			<tbody></tbody></table></div>
			<div class="showtablelist" style="color:#000;padding-left: 5%;padding-top: 1%;">
						<div class="col-md-12"><h3 class="mb-2 text-center">Select Table List</h3></div>		
		<div class="row">
		<div class="col-md-3">
		<form style="font-size:12px;text-align: left;">
		<div class="checkbox"><input type = "checkbox" value="shipment_Id" name="filterList"/> <label>Shipment Id</label></div>
		<div class="checkbox"><input type = "checkbox" value="shipment_Num" name="filterList"/> <label>Shipment Number</label></div>
        <div class="checkbox"><input type = "checkbox" value="device_Id" name="filterList"/> <label>Device Id</label></div>
        <div class="checkbox"><input type = "checkbox" value="bat" name="filterList"/> <label>Battery</label></div>
        </form></div>
        <div class="col-md-3">
		<form style="font-size:12px;text-align: left;">
        <div class="checkbox"><input type = "checkbox" value="partner_From" name="filterList"/> <label>Partner From</label></div>
        <div class="checkbox"><input type = "checkbox" value="partner_To" name="filterList"/> <label>Partner To</label></div>
        <div class="checkbox"><input type = "checkbox" value="event_Name" name="filterList"/> <label>Event Name</label></div>
        <div class="checkbox"><input type = "checkbox" value="event_SNo" name="filterList"/> <label>Event SNo</label></div>
        </form>
        </div>
        <div class="col-md-3">
        <form style="font-size:12px;text-align: left;">
        <div class="checkbox"><input type = "checkbox" value="mode_of_Transport" name="filterList"/> <label>Mode of Transport</label></div>
        <div class="checkbox"><input type = "checkbox" value="internal_temperature" name="filterList"/> <label>Internal Temperature</label></div>
        <div class="checkbox"><input type = "checkbox" value="distance" name="filterList"/> <label>Distance</label></div>
        <div class="checkbox"><input type = "checkbox" value="report_type" name="filterList"/> <label>Report Type</label></div>
        </form></div>
        <div class="col-md-3">
        <form style="font-size:12px;text-align: left;">        
        <div class="checkbox"><input type = "checkbox" value="sensor_id" name="filterList"/> <label>Sensor Id</label></div>
        <div class="checkbox"><input type = "checkbox" value="speed" name="filterList"/> <label>Speed</label></div>
        <div class="checkbox"><input type = "checkbox" value="utc" name="filterList"/> <label>Time</label></div>
        </form>
        </div></div>
        <div class="cols-md-12 text-center">
        <button class="bg-color margin-rl1 btn-head mt-2" id="CancelBtn">Cancel</button>
        <button class="bg-color margin-rl1 btn-head mt-2" id="SaveFiltersListBtn">Save Table</button>
        </div>        
        </div>
			<div style="width:100%;height:20px;"></div>
			<div id="chartContainer" style="height: 200px; width: 100%;" class="live_charts"></div>
				<div id="chartContainer1" style="height: 300px; width: 100%;" class="delivery_charts"></div>
			<div style="width:100%;height:20px;"></div>

    </div>
    <div id="map_menu1" class="container tab-pane fade">
		<div class="row" style="background: lightgray;padding: 5px;margin: 0px;border-radius: 2px;margin-top: 5px;">
     		<div class="col-md-2 mt-1 p-0 shortsMenu_update_complete">
     			
     		</div>
     		<div class="col-md-10">
     			<div class="shipment_name"></div>
     		</div>
     	</div>
     	<div style="width:100%;height:5px;"></div>
     	<div id="showmap">     	
		<div id="map" style="width:100%;height:450px;z-index:1;"></div>
		<img src="./images/loading.gif" id="loadingimg1"/>
    	</div>
    </div>
    <div id="data_menu2" class="container tab-pane fade">

    </div>
  </div>
</div>
<div style="width:100%;height:5px;"></div>
	<div class="col-sm-12 col-md-12 col-lg-12 text-center m-0 p-0" id="bottom_map">
<!-- 	<table class="table table-striped table-bordered ">
			<thead>
				<tr>
					<th>Delivery No.</th>
					<th>Device Id</th>
					<th>Event Name</th>
					<th>Report Type</th>
					<th>Internal Temp.</th>
					<th>Battery</th>
					<th>Mode Of Transport</th>
				</tr>
			</thead>
			<tbody></tbody></table> -->
		<!-- 	<div class="showtableheader_bottom" style="width:100%;height:30px;background:#fff;"></div> -->
		<table class="table table-striped table-bordered draftTableaa " id="draftTableaa" style="overflow-x:auto;font-size:11px;height:150px;overflow-y:auto;">
			<thead class="bg-color tableHeadershown" style="color:#fff;">
				<tr>
					<th>Shipment Id</th>
					<th>Delivery No.</th>
					<th>Device Id</th>
					<th>Event Name</th>
					<th>Report Type</th>
					<th>Internal Temp.</th>
					<th>Battery</th>
					<th>Mode Of Transport</th>
				</tr>
			</thead>
			<tbody ></tbody></table>
	</div>
	<button onclick="exportTableToCSV('Table.csv')" class="btn bg-color download" style="color:#fff;min-width:100px;height: 25px;padding: 0px 7px;font-size: 11px;font-weight: bold;margin: 3px;float: left;">Download CSV File</button>
</div>
</div> 
<div id="backgroundBlur"></div>
</div>
</body>
</html>
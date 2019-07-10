<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SCMXpert Dashboard</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <jsp:include page="./View/jsfiles.jsp" />
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script> -->
  
  
  
<!--   <link rel="stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"/>
<link rel="stylesheet" href = "https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
<script rel="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script rel="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script rel="javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> -->
<!-- <script src=" https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
<link rel="stylesheet" href = "https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css"/> -->
  
  <!-- <script src="./js/Map.js"></script> -->
<jsp:include page="./View/jsfiles.jsp" />
<style>
btn btn-light dropdown-toggle{
 background:brown;
}
.delivered_shipments{display:none;}
@keyframes blink {
       0% {
            -webkit-transform: scale(1);
            transform: scale(1);
        }
       50% {
            -webkit-transform: scale(1.5);
            transform: scale(1.5);
        }
        100% {
          -webkit-transform: scale(1);
            transform: scale(1);
        }
    }
 .alaram {
        transition: .3s ease-in;
        animation: blink 1s;
        animation-iteration-count: infinite;
    }
 #tablelist_data>tbody>tr{transition: transform .2s;postion:relative; /* Animation */}
 #tablelist_data>tbody>tr:hover{ transform: scale(1.1);background:blue;color:#fff;box-shadow: -5px 3px 30px #000;}
 .live_shipments{overflow-y:auto;overflow-x:hidden;width:100%;max-height:450px;border-top: 2px solid #915163b5;margin-top: 18px;}
 .delivered_shipments{min-height: 450px;overflow-y:auto;overflow-x:hidden;width:100%;}
.live_shipments_list{transition: transform .2s;/* Animation */}
.live_shipments_list:hover{transform: scale(1.04);box-shadow: -5px 3px 30px #000;z-index: 1;position: relative;}
.header-menu{color:#fff;float:left;}
.header-menu a{color:#fff;font-weight:bold;}
.header-menu:hover{background:#fff;border-radius:5px 5px 0px 0px;}
.header-menu:hover a{color:#274a6f;}
.site-title{color: #ffffff;text-shadow: 0 4px 0 rgba(100,100,100,1), 0 8px 3px rgba(0,0,0,0.7);font-weight: 600;font-size: 38px;padding: 1%;font-weight: bold;}
.site-title a{text-decoration:none;color:#ffffff;}
.site-title:hover a{text-decoration:none;color:#ffffff;}
.hide_show_icon,.show_hide_icon{font-weight: bold;cursor:pointer;text-align:center;float:right;margin-top:1%;}
.hide_show_icon, .show_remaing{display:none;}
.showviewdata{display:none;width: 57%;background: #fff;border-radius: 5px;z-index: 9999999999;position: absolute;height: 450px;top: 74px;bottom: 10px;right: 23%;}
#backgroundBlur{background: #000000;opacity: .7;display: none;position: fixed;top: 0;left: 0;width: 100%;height: 100%;z-index: 999999999;}
.view_body_boder{width:95%;height:80%;border:1px solid #000;margin:auto;box-shadow:0px 0px 5px #000;}
.view_body_header{width:100%;height:30px;padding-top:1%;padding-right:3%;}
.nodes{width:55px;font-size:11px;font-weight:bold;border:1px solid #000;float:left;text-align:center;margin:1px;float:right;border-radius:3px 3px 0px 0px;}
.createshipmentfont a:hover{color:#fff;}
.width1{width:1%;}
.width5{width:5%;}
.width25{width:25%;}
.width50{width:50%;}
.width75{width:75%;}
.width90{width:90%;}
.width100{width:100%;}
#tablelist_data_length{float:right;}
table.dataTable thead>tr>th.sorting_asc, table.dataTable thead>tr>th.sorting_desc, table.dataTable thead>tr>th.sorting, table.dataTable thead>tr>td.sorting_asc, table.dataTable thead>tr>td.sorting_desc, table.dataTable thead>tr>td.sorting {
    padding-right: 20px;
}
#error_filter{color:red;font-weight:bold;font-size:12px;width:100%;text-align:center;}
.delivery_charts{display:none;}
body{overflow-x:hidden;overflow-y:auto;}
.showlistcard{transform: scale(1.04);box-shadow: -5px 3px 30px #000;z-index: 1;position: relative;}
#ui-datepicker-div{index:9999;}
.tab-pane>br{display:none;}
#draftTableaa>thead>tr>th{padding:4px;text-align:center;}
#draftTableaa>tbody>tr>td{padding:2px;text-align:center;}
#draftTableaa_length{font-size: 12px;margin-top: 9px;display:none;}
#draftTableaa_filter{font-size: 12px;margin-top: 9px;display:none;}
.form-control-sm{height:25px;}
.custom-select-sm {height:25px;}
label{margin:0px;}
#draftTableaa_info{font-size: 12px;}
.dataTables_paginate,.dataTables_info{display:none;}
#draftTableaa_paginate{font-size:9px;}
#draftTableaa>thead>tr>.sorting, .sorting_asc, .sorting_desc {
    background : none;
}
table.dataTable thead .sorting:before, table.dataTable thead .sorting_asc:before, table.dataTable thead .sorting_desc:before, table.dataTable thead .sorting_asc_disabled:before, table.dataTable thead .sorting_desc_disabled:before{content:none;}
table.dataTable thead .sorting:after, table.dataTable thead .sorting_asc:after, table.dataTable thead .sorting_desc:after, table.dataTable thead .sorting_asc_disabled:after, table.dataTable thead .sorting_desc_disabled:after{content:none;}
div::-webkit-scrollbar {
    width: 12px;
}

div::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    border-radius: 10px;
}

div::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5);
}
.shipment_name{width:80%;border: 1px solid #000;padding: 1.5%;border-radius: 5px;margin-top: 1.5%;}
#shipmentdatalistshow>tbody>tr:hover{background:lightgray;font-weight:bold;cursor:pointer;}


#shipmentdatalistshow>thead>tr>th{padding:4px;text-align:center;}
#shipmentdatalistshow>tbody>tr>td{padding:2px;text-align:center;}
#shipmentdatalistshow_length{font-size: 12px;margin-top: 9px;display:none;}
#shipmentdatalistshow_filter{font-size: 12px;margin-top: 9px;display:none;}
.form-control-sm{height:25px;}
.custom-select-sm {height:25px;}
label{margin:0px;}
#shipmentdatalistshow_info{font-size: 12px;}
#shipmentdatalistshow_paginate{font-size:9px;}
#shipmentdatalistshow>thead>tr>.sorting, .sorting_asc, .sorting_desc {
    background : none;
}
#draftTableaa>tbody>tr:hover{background:lightgray;font-weight:bold;cursor:pointer;}
#loadingimg{position: absolute;margin: 10% 40%;display:none;}
#loadingimg1{margin: 10% 30%;display:none;}
#bottom_map{height:200px;overflow-y:auto;}
</style>
</head>
<body>
  <!-- <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet"/> -->

      <!-- <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->
<!--       <script src="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.js"></script>
		<link type="text/css" rel="stylesheet" href="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.css"/> -->
		
		
 
<!--  <script src="https://api.mqcdn.com/sdk/mapquest-gl-js/v0.4.0/mapquest-gl.js"></script>
    <link type="text/css" rel="stylesheet" href="https://api.mqcdn.com/sdk/mapquest-gl-js/v0.4.0/mapquest-gl.css"/> -->
<script>

/* maps */
  function mapOnLoad(data,name){
       $(".showmap > div").remove();
       if(name == "delivery")
    	   {
    	   	//	$(".delivery_show_list_items").html(data.length)
    	   }
       if(name == "live")
	   {
	   	//	$(".live_show_list_items").html(data.length)
	   }
   	$(".showmap").html('<div id="map" style="width:100%;height:450px;z-index:1;"></div>');
       L.mapquest.key = 'e8DYG9q9Zamy3iXMvD2iuo3mI93EGRHF';
      // console.log(data);
	  L.mapquest.geocoding().geocode(data, createMap);
}
    function createMap(error, response) {
    // Initialize the Map
    var map = L.mapquest.map('map', {
      layers: L.mapquest.tileLayer('map'),
      center: [0, 0],
      zoom: 12
    });

    // Generate the feature group containing markers from the geocoded locations
    var featureGroup = generateMarkersFeatureGroup(response);

    // Add markers to the map and zoom to the features
    featureGroup.addTo(map);
    map.fitBounds(featureGroup.getBounds());
  }

  function generateMarkersFeatureGroup(response) {
    var group = [];
    for (var i = 0; i < response.results.length; i++) {
      var location = response.results[i].locations[0];
      var locationLatLng = location.latLng;

      // Create a marker for each location
      var marker = L.marker(locationLatLng, {icon: L.mapquest.icons.marker({
		    primaryColor: '#18b85a',
		    secondaryColor: '#18b85a',
		    shadow: true,
		    size: 'sm'
		  })})
        .bindPopup(location.adminArea5 + ', ' + location.adminArea3);

      group.push(marker);
    }
    return L.featureGroup(group);
  } 

</script>
          <!-- Javascript -->
      <script>
         $(function() {
        	 $('#bottom_map').scroll(function(){
        		 if ($(this).scrollTop() >= 10) {
        			 
        		 }
        		});
        	 $("#bpi_idchange,#scmid").on("change",function(){
         		$.removeCookie("cust_name", { path: '/' });
      	        $.removeCookie("bp_id", { path: '/' });
         		 var bpval = $("#bpi_idchange").val();
         		 var scmval = $("#scmid").val();
         		 changebpid(scmval,bpval);
         	 });
        	 var bpval = $("#bpi_idchange").val();
    		 var scmval = $("#scmid").val();
        	 $.getJSON('http://localhost:8080/SCMXPert/getShipments/'+scmval+'/'+bpval, function(filter){
        		 var deliverd = [];
        		 var live = [];
        		 $.each(filter,function(key,value){
        			 
        			 if(value.delivered_Status == "Delivered"){
        				 deliverd.push(value.route_From);
        			 }
        			 if(value.delivered_Status != "Delivered"){
        				 live.push(value.route_From);
        			 }
        		 });
        		 $(".delivery_show_list_items").text(deliverd.length);
        		 $(".live_show_list_items").text(live.length);
        	 });
        	/*  var divheight = $(window).height()-320+'px';
        	 $('.live_shipments').css("max-height",divheight); */
        	 $(".dashboard_page").hide();
        	   /* $('#draftTableaa').DataTable( {
			        dom: 'Bfrtip',
			        buttons: [
			            'copyHtml5',
			            'excelHtml5',
			            'csvHtml5',
			            'pdfHtml5'
			        ]
			    }); */
        	 var bpval = $("#bpi_idchange").val();
    		 var scmval = $("#scmid").val();
    		 changebpid(scmval,bpval);
    		 
    		 
             $( "#datepicker-13" ).datepicker({ dateFormat: 'm-d-yy'});
             $(".delivered").on("click",function(){
             	$(this).addClass("btn-color").removeClass("delivered:hover font-color");
             	$('.live').addClass("live:hover font-color").removeClass("btn-color");
             	$(".delivered_shipments").show();
             	$(".live_shipments").hide();
                Deliveryshipments_list(scmval,bpval);
             });

             
             $(".live").on("click",function(){
             	$(this).addClass("btn-color").removeClass("live:hover font-color");
             	$('.delivered').addClass("delivered:hover font-color").removeClass("btn-color");
             	$(".live_shipments").show();
             	$(".delivered_shipments").hide();
            	liveshipments_list(scmval,bpval);
             });
             $(".hide_show_icon").on("click",function(){
             	$(".live_shipments").css("max-height","450px");
             	$(".show_remaing").hide();
             	$(".show_hide_icon,.show_hide_filter").show();
             	$(this).hide();            	
             });
             $(".show_hide_icon").on("click",function(){
             	$(".live_shipments").css("max-height","600px");
             	$(".show_hide_filter").hide();
             	$(".hide_show_icon,.show_remaing").show();
             	$(this).hide();            	
             });
             $("#backgroundBlur,.close").on("click",function(){
             	$("#backgroundBlur").hide();
             	$(".showviewdata").hide();
             	$("body").css("overflow-y","auto");
             });
       		$("#createshipment_link").on("click", function () {
       	        window.location.href = "CreateShipment.jsp";
        	    });
        	 $("#reset").on("click",function(){

        		 $("#devices").val('');
        		 $("#from").val('');
        		 $("#to").val('');
        		 $("#selectgoods").val('');
         		 $("#datepicker-13").val('');
         		 $("#delivery").val('');
         		 $("#reference").val('');
        		 $("#departments").val('');
        		 liveshipments_list(scmval,bpval);
        	});


         });
         function createshipmentlink()
         {
        	 window.location.href = "CreateShipment.jsp";
         }
        function liveshipments_list(cust_id,bp_id)
        {
        	$(".info").hide();
        	$(".live_shipments").empty();
        	$("#draftTableaa>tbody").empty();
        	$("#bottom_map").show();
        	$(".delivered ").removeClass('btn-primary');
        	$(".live ").removeClass('btn-outline-info');
        	$(".live ").addClass('btn-primary');
        	$(".delivered ").addClass('btn-outline-info');
        	//$("body").hide();
        	$("#loadingimg").show();
        	 $.getJSON('http://localhost:8080/SCMXPert/getShipments/'+cust_id+'/'+bp_id, function(filter){
        		
        		// $("#loadingimg").remove();
        		$("#loadingimg").hide();
        		 $(".dashboard_page").show();
             	var live_shipmen = [];
             	var live_shipments = [];
             	$.each(filter,function(key,value){
             		//alert(value.wayPoints);
             		$.each(value,function(keyses,valuese){
             			//alert(keyses);
             		});
             	var alerts = '';
             	if(alerts == "Active")
            		 {	 	var alertss = "alarm.png";
            			 	$(".imagenotif>img").addClass("alaram");
            		 }else{
            			 var alertss = "notification.png";
            			 $(".imagenotif>img").removeClass("alaram");
            		 }
             	var theDate = new Date( Date.parse(value.created_Date));
             	var date_create = theDate.toLocaleDateString();
             	var theDatee = new Date( Date.parse(value.delivered_Date));
             	var delivered_Date = theDatee.toLocaleDateString();
             	var date_string = moment(date_create, "MM/DD/YYYY").format("M-D-YYYY");
             	
 /*             theDate.toLocaleString();  // "6/29/2011, 9:52:48 AM"
             	theDate.toLocaleTimeString();  // "9:52:48 AM"
             	theDate.toLocaleDateString();  // "6/29/2011" */
               	var shipWayPoints = [];
             	var var_length = value.wayPoints.length; 
             	 for(i=0;i<=var_length-1;i++){
             		 shipWayPoints.push("'"+value.wayPoints[i]+"'");
             	    }
             	 var getPointsWays = "["+shipWayPoints+"]";
             	
             	var ship = [];
             	var var_points = value.wayPoints
             	var var_length = value.wayPoints.length;
				
             	if(value.delivered_Status != "Delivered")
             		{
             		var var_length = value.wayPoints.length;
             		
              		if(var_length > 0)
              			{
              			var datajhsdf = value.wayPoints[var_length-1];
                  		var newstr = datajhsdf.join(', ');
              				live_shipmen.push(newstr); 
              			}else{
              				live_shipmen.push(value.route_From);
              			}
             		            		
             		ship.push(value.route_From);
             		if(value.delivered_Status == null)
             			{
             			var status_length = 10;
             			}else{
             				var status_length = value.delivered_Status.length;
             			}
             		
             		if(status_length > 15)
             			{
             				var font_size = "10";
             			}else{
             				var font_size = "12";
             			}
             		$('#draftTableaa>tbody').empty();
             		$('#draftTableaa>tbody>td').css("padding","0px");
             		var shipment_device = '<div class="p-1 m-1 live_shipments_list row goods_'+value.goods_Desc+' shipdate_'+date_string+' delivery_'+value.shipment_Num+' device_'+value.device_Id+' reference_'+value.type_Of_Reference+' dept_'+value.departments+' one_'+value.device_Id+' two_list two_view_'+value.shipment_Id+' from_'+value.route_From.toLowerCase()+' to_'+value.route_To.toLowerCase()+'" onclick="javascript:showdatadialogbox(\''+value.shipment_Id+'\',\''+value.shipment_Num+'\',\''+value.device_Id+'\',\''+value.created_Date+'\',\''+value.route_From+'\',\''+value.route_To+'\','+getPointsWays+');" style="width:98%;border:1px solid black;border-radius:3px;min-height:60px;cursor:pointer;"  ><div class="from_coordinates_'+value.route_From.toLowerCase()+' to_coordinates_'+value.route_To.toLowerCase()+' device_coordinates_'+value.device_Id+'" style="display:none;">'+value.wayPoints[var_length-1]+'</div><div class="col-md-4 col-sm-4"><h6 class="m-0">'+value.shipment_Id+'</h6><p style="font-size:10px;margin:0px;font-weight:600;">From :- '+value.route_From+'</p><p style="font-size:10px;margin:0px;font-weight:600;">To :- '+value.route_To+'</p></div><div class="col-md-5 col-sm-5"><div style="width:100%;"><p style="float:left;text-align:left;width:50%;font-size:10px;margin:0px;font-weight:600;margin-top:0px;">'+date_create+'</p><p style="float:left;text-align:right;width:50%;font-size:10px;font-weight:600;margin-top:0px;">'+delivered_Date+'</p><div style="clear:both;"></div></div><div class="text-center m-auto" style="width:75%;height: 10px;position: relative;bottom: 25px;"><div class="p-1 points-dots"></div><div class="progress margin-auto" style="position: relative;height: 0.5rem;"><div class="progress-bar progress-bar-striped progress-bar-animated "style="width:'+value.event_Status+'%;background-size: 0.5rem 0.8rem;background-color:#43b54380;background-image: linear-gradient(45deg,rgba(255, 255, 255, 0.82) 25%,#797676c7 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);"></div></div><div class="p-1 points-dots2"></div><div style="font-size: 12px;font-weight: 600;height: 0px;position: relative;bottom: 5px;width: 100%;text-align: center;">Status: <span style="font-size:'+font_size+'px;">'+value.delivered_Status+'</span></div></div><div class="clear:both;"></div></div><div class="col-md-3 col-sm-3 text-center p-0 imagenotif"><img src="./images/'+alertss+'" style="width:16px;height:16px;margin-top:20px;" class="notif"></div><div style="clear:both"></div></div>';
             			$(".live_shipments").append(shipment_device);
             			var string_json = [];
             		//alert(value.shipment_Id);
             		var shipment_val = [];
             			$.getJSON("http://localhost:8080/SCMXPert/getShipmentTransactionDeviceData/"+value.shipment_Id,function(filters){
             				var filter_length = filters.length;
             				var value_filter = filters[filter_length - 1];
             				//alert(sort(value_filter.event_SNo));
             				var event_sNO = [];
             				$.each(filters,function(key,value){
             					event_sNO.push(value.event_SNo);
             				});
             				event_sNO.sort(function(a, b){return b-a});
             				var event_SNo_c = event_sNO[0];
             				
             				$.each(filters,function(kew,val){
             					if(event_SNo_c == val.event_SNo)
             						{
             						var status_length = val.event_Name.length;
				             		if(status_length > 15)
				             			{
				             				var font_size = "10";
				             			}else{
				             				var font_size = "12";
				             			}
	             						var tabletr = "<tr><td>"+val.shipment_Num+"</td><td>"+val.device_Id+"</td><td style='font-size:"+font_size+"px;'>"+val.event_Name+"</td><td>"+val.report_type+"</td><td>"+val.internal_temperature+"<sup style='font-size:8px;font-weight:bold;'>0</sup>"+val.temp_Measurment+"</td><td>"+val.bat+"</td><td>"+val.mode_of_Transport+"</td></tr>";
	                     				$('#draftTableaa>tbody').append(tabletr); 

             						}
             					shipment_val.push(tabletr);
             					
             					});
             				
             			});
             			//alert($('#draftTableaa>tbody').html());
             			//alert(shipment_val);
             		}
 				});
             	console.log("Hello "+live_shipmen);
             	mapOnLoad(live_shipmen,"live");
             	$(".delivery_charts").hide();
             	$(".live_charts").show();
             });
       }
        function myFunction() {
        	  points.sort(function(a, b){return b-a});
        	  document.getElementById("demo").innerHTML = points[0];
        	}
        function Deliveryshipments_list(scmid,bpid)
        {
        	$(".info").hide();
        	 $(".dashboard_page").hide();
        	    	$(".delivered_shipments").empty();
        	    	$('#draftTable>tbody').empty();
        	    	$("#bottom_map").show();
        	    	$("#loadingimg").show();
        	    	$(".live ").removeClass('btn-primary');
                	$(".delivered ").removeClass('btn-outline-info');
        	    	$(".delivered ").addClass('btn-primary');
                	$(".live ").addClass('btn-outline-info');
               	 $.getJSON('http://localhost:8080/SCMXPert/getShipments/'+scmid+'/'+bpid, function(filter){
               		$("#loadingimg").hide();
           		 $(".dashboard_page").show();
                    	var live_shipmen = [];
                    	var live_shipments = [];
                    	$.each(filter,function(key,value){
                    		//alert(value.wayPoints);
                    		$.each(value,function(keyses,valuese){
                    			//alert(keyses);
                    		});
                    	var alerts = '';
                    	if(alerts == "Active")
                   		 {	 	var alertss = "alarm.png";
                   			 	$(".imagenotif>img").addClass("alaram");
                   		 }else{
                   			 var alertss = "notification.png";
                   			 $(".imagenotif>img").removeClass("alaram");
                   		 }
                    	var theDate = new Date( Date.parse(value.created_Date));
                    	var date_create = theDate.toLocaleDateString();
                    	var theDatee = new Date( Date.parse(value.delivered_Date));
                    	var delivered_Date = theDatee.toLocaleDateString();
                    	var date_string = moment(date_create, "MM/DD/YYYY").format("M-D-YYYY");
             	
 /*             theDate.toLocaleString();  // "6/29/2011, 9:52:48 AM"
             	theDate.toLocaleTimeString();  // "9:52:48 AM"
             	theDate.toLocaleDateString();  // "6/29/2011" */
               	var shipWayPoints = [];
             	var var_length = value.wayPoints.length; 
             	 for(i=0;i<=var_length-1;i++){
             		 shipWayPoints.push("'"+value.wayPoints[i]+"'");
             	    }
             	 var getPointsWays = "["+shipWayPoints+"]";
             	var ship = [];
             	if(value.delivered_Status == "Delivered")
             		{
             		
             		
             		
             		var var_length = value.wayPoints.length;
             		var datajhsdf = value.wayPoints[var_length-1];
              		var newstr = datajhsdf.join(', ');
             		live_shipmen.push(newstr);             		
             		ship.push(value.route_From);
             		var status_length = value.delivered_Status.length;
             		if(status_length > 15)
             			{
             				var font_size = "10";
             			}else{
             				var font_size = "12";
             			}
             		$('#draftTableaa>tbody').empty();
             		$('#draftTableaa>tbody>td').css("padding","0px");
             		//alert(value.goodl);
             		
             		var shipment_device = '<div class="p-1 m-1 live_shipments_list row goods_'+value.goods+' shipdate_'+date_string+' delivery_'+value.shipment_Num+' device_'+value.device_Id+' reference_'+value.type_Of_Reference+' dept_'+value.departments+' one_'+value.device_Id+' two_list two_view_'+value.shipment_Id+' from_'+value.route_From.toLowerCase()+' to_'+value.route_To.toLowerCase()+'" onclick="javascript:showdatadialogbox(\''+value.shipment_Id+'\',\''+value.shipment_Num+'\',\''+value.device_Id+'\',\''+value.created_Date+'\',\''+value.route_From+'\',\''+value.route_To+'\','+getPointsWays+');" style="width:98%;border:1px solid black;border-radius:3px;min-height:60px;cursor:pointer;"  ><div class="from_coordinates_'+value.route_From.toLowerCase()+' to_coordinates_'+value.route_To.toLowerCase()+' device_coordinates_'+value.device_Id+'" style="display:none;">'+value.wayPoints[var_length-1]+'</div><div class="col-md-4 col-sm-4"><h6 class="m-0">'+value.shipment_Id+'</h6><p style="font-size:10px;margin:0px;font-weight:600;">From :- '+value.route_From+'</p><p style="font-size:10px;margin:0px;font-weight:600;">To :- '+value.route_To+'</p></div><div class="col-md-5 col-sm-5"><div style="width:100%;"><p style="float:left;text-align:left;width:50%;font-size:10px;margin:0px;font-weight:600;margin-top:0px;">'+date_create+'</p><p style="float:left;text-align:right;width:50%;font-size:10px;font-weight:600;margin-top:0px;">'+delivered_Date+'</p><div style="clear:both;"></div></div><div class="text-center m-auto" style="width:75%;height: 10px;position: relative;bottom: 25px;"><div class="p-1 points-dots"></div><div class="progress margin-auto" style="position: relative;height: 0.5rem;"><div class="progress-bar progress-bar-striped progress-bar-animated "style="width:'+value.event_Status+'%;background-size: 0.5rem 0.8rem;background-color:#43b54380;background-image: linear-gradient(45deg,rgba(255, 255, 255, 0.82) 25%,#000000c7 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);"></div></div><div class="p-1 points-dots2"></div><div style="font-size: 12px;font-weight: 600;height: 0px;position: relative;bottom: 5px;width: 100%;text-align: center;">Status: <span style="font-size:'+font_size+'px;">'+value.delivered_Status+'</span></div></div><div class="clear:both;"></div></div><div class="col-md-3 col-sm-3 text-center p-0 imagenotif"><img src="./images/'+alertss+'" style="width:16px;height:16px;margin-top:20px;" class="notif"></div><div style="clear:both"></div></div>';
             			$(".delivered_shipments").append(shipment_device);
             			var string_json = [];
             		//alert(value.shipment_Id);
             			$.getJSON("http://localhost:8080/SCMXPert/getShipmentTransactionDeviceData/"+value.shipment_Id,function(filters){
             				var filter_length = filters.length;
             				var value_filter = filters[filter_length - 1];
             				//alert(sort(value_filter.event_SNo));
             				var event_sNO = [];
             				$.each(filters,function(key,value){
             					event_sNO.push(value.event_SNo);
             					/* $.each(value,function(keyssssss,values){
             						alert(keyssssss);
             					}); */
             				});
             				
             				event_sNO.sort(function(a, b){return b-a});
             				//alert(event_sNO);
             				var event_SNo_c = event_sNO[0];
             				
             				$.each(filters,function(kew,val){
             					if(event_SNo_c == val.event_SNo)
             						{
             						//alert(kew);
             						var status_length = val.event_Name.length;
				             		if(status_length > 15)
				             			{
				             				var font_size = "10";
				             			}else{
				             				var font_size = "12";
				             			}
	             						var tabletr = "<tr><td>"+val.shipment_Num+"</td><td>"+val.device_Id+"</td><td style='font-size:"+font_size+"px;'>"+val.event_Name+"</td><td>"+val.report_type+"</td><td>"+val.internal_temperature+"<sup style='font-size:8px;font-weight:bold;'>0</sup>"+val.temp_Measurment+"</td><td>"+val.bat+"</td><td>"+val.mode_of_Transport+"</td></tr>";
	                     				$('#draftTableaa>tbody').append(tabletr); 
	                     			
	                     				//var json_table = 
	                          			             						
             						}
             					//alert(tabletr);
             					
             				});
             				
             				
             				             				 
             			});

             		}
 				});
                    	//alert(live_shipmen);
             	mapOnLoad(live_shipmen,"delivery");
             	$(".live_charts").hide();
             	$(".delivery_charts").show();
             });
        	
        }
        

      
        function clearLine() {
            jg.clear();
        }
        function getgraph(dataPoints) {
        	
        	console.log(dataPoints);
		    chart = new CanvasJS.Chart("chartContainer",{
		    	
		    	zoomEnabled: true,
		        title:{
		            text:"Live Chart from Temperature"
		        },
		        axisY:{
		        	      minimum: 20,
		        	      maximum: 50
		        	     },
		        axisX:{      
		        	gridThickness: 2,
		        	valueFormatString: "D MMMM hh:mm tt"
		        },
		        data: [{
		        type: "line",
		        dataPoints : dataPoints,
		        }]
		    });
		    chart.render();
        }
        function getmaproutelist(shipment_id)
        {
        	var bpval = $("#bpi_idchange").val();
   		 var scmval = $("#scmid").val();
   		 $('#map').hide();
   		$("#loadingimg1").show();
        	 $.getJSON('http://localhost:8080/SCMXPert/getShipments/'+scmval+'/'+bpval, function(filter){
        		 $.each(filter,function(key,value){
        				//var shipWayPoints = [];
                     	//var var_length = value.wayPoints.length; 
                     	/*  for(i=0;i<=var_length-1;i++){
                     		 shipWayPoints.push("'"+value.wayPoints[i]+"'");
                     	    }
                     	 var getPointsWays = "["+shipWayPoints+"]"; */
                     	 if(value.shipment_Id == shipment_id)
                     		 { $("#loadingimg1").hide();
                     		$('#map').show();
                     			mapPointsRoute(value.route_From,value.route_To,value.wayPoints);
                     		 }
                     	 
        		 });
        	 });
        }
        function showdatadialogbox(shipment_Id,shipment_Num,device_Id,created_Date,route_From,route_To,getPointsWays)
        {
        	
        	
        	/* $('.showviewdata').show();
        	$("body").css("overflow","hidden");
        	$("#backgroundBlur").show(); */
        	$(".info").hide();
        	$(".showmap").empty();
        	console.log(getPointsWays);
        	
//        	alert(route_From);alert(route_To);alert(getPointsWays);

			var attr_val = $('.two_view_'+shipment_Id).attr("onclick");
			
        	$("#bottom_map,.download").hide();
        	$("#mapShowInfoTab").removeAttr("onclick");
        	//$("#mapShowInfoTab").attr("onclick",attr_val);
        	$("#mapShowInfoTab").attr("onclick","javascript:getmaproutelist('"+shipment_Id+"')");
        	$(".info").show();
        	mapPointsRoute(route_From,route_To,getPointsWays);
        	var dataPoints = [];
   			$.getJSON("http://localhost:8080/SCMXPert/getDeviceDataTemp/"+shipment_Id,function(filterspoints){
   			
   			
        	$.each(filterspoints, function(key, value){
        		var theDate = new Date( Date.parse(value.utc));
             	var date_create = theDate.toLocaleString();
		        dataPoints.push({x: new Date(date_create), y: parseInt(value.internal_temperature)});
		    });
        	console.log(dataPoints);
        	 window.onload = getgraph(dataPoints);
    		    //updateChart();
   				
   			});
        	
    		
   		/*  $.each(filterspoints, function(key, value){
   		        dataPoints.push({x: value[0], y: parseInt(value[1])});
   		    });
   		    chart = new CanvasJS.Chart("chartContainer",{
   		        title:{
   		            text:"Live Chart with dataPoints from External JSON"
   		        },
   		        data: [{
   		        type: "line",
   		        dataPoints : dataPoints,
   		        }]
   		    });
   		    chart.render();
   		    updateChart();
   		
   		
   		updateChart(filterspoints); */
   			$.getJSON("http://localhost:8080/SCMXPert/getShipmentTransactionDeviceData/"+shipment_Id,function(filters){
 				/* var filter_length = filters.length;
 				var value_filter = filters[filter_length - 1];
 				//alert(sort(value_filter.event_SNo));*/
 				$('#shipmentdatalistshow>tbody').empty();
 				var event_sNO = []; 
 				var partner_From = [];
 				var shipment_Num = [];
 				var device_Id = [];
 				$.each(filters,function(key,value){
 					event_sNO.push(value.event_SNo);
 					partner_From.push(value.partner_From);
 					shipment_Num.push(value.shipment_Num);
 					device_Id.push(value.device_Id);
 					//var part_no = value.partner_From;
 					
 					/* $.each(value,function(keyssssss,values){
 						alert(keyssssss);
 					}); */
 				});
 				console.log(shipment_Num);
 				//$.cookie("part_from", partner_From[0]);
 				//$.cookie("shipment_id_name", shipment_Id);
 				
 				$(".shortsMenu_update_complete").html('<button class="btn bg-color btn-head" onclick="javascript:updateEvent(\''+shipment_Id+'\',\''+partner_From[0]+'\',\''+shipment_Num[0]+'\',\''+device_Id[0]+'\');" style=" font-size:11px;margin:2px;width: 130px;height: 25px;line-height: 5px;">Update Event</button><button class="btn bg-color btn-head"  onclick="javascript:CompleteShipment(\''+shipment_Id+'\',\''+partner_From[0]+'\',\''+shipment_Num[0]+'\',\''+device_Id[0]+'\');" style=" font-size:11px;margin:2px;width: 130px;height: 25px;line-height: 5px;">Complete Shipment</button><a href="Dashboard.jsp"><button class="btn bg-color btn-head" style=" font-size:11px;margin:2px;width: 64px;float:left;height: 25px;line-height: 5px;">Exit</button></a><button class="btn bg-color btn-head" style=" font-size:11px;margin:2px;width: 64px;float:left;height: 25px;line-height: 5px;">Share</button><span style="clear:both;"></span>');
 				
 				
 				
 				
 				event_sNO.sort(function(a, b){return a-b});
 				/* var event_SNo_c = event_sNO[0]; */
 				
 				for(i=0;i<event_sNO.length;i++)
 					{
 						var event_num = event_sNO[i];
 		 				$.each(filters,function(kew,val){
 		 					
 		 		 					if(event_num == val.event_SNo)
 		 		 						{
 		 		 						//alert(kew);
 		 		 						var status_length = val.event_Name.length;
 		 			             		if(status_length > 15)
 		 			             			{
 		 			             				var font_size = "10";
 		 			             			}else{
 		 			             				var font_size = "12";
 		 			             			}
 		 			             		var dateTime = new Date( Date.parse(val.utc));
 		 		                    	var date_Time = dateTime.toLocaleString();
 		 			             		//var val_data = '<div class=""><div><span>Altitude :- </span><span>'+val.altitude+'</span></div><div><span>Battery :- </span><span>'+val.bat+'</span></div><div><span>Distance :- </span><span>'+val.distance+'</span></div><div><span>Latitude :- </span><span>'+val.latitude+'</span></div><div><span>Longitude :- </span><span>'+val.longitude+'</span></div><div><span>Report Type :- </span><span>'+val.report_type+'</span></div><div><span>Sensor Id :- </span><span>'+val.sensor_id+'</span></div><div><span>Speed :- </span><span>'+val.speed+'</span></div><div><span>UTC TIME :- </span><span>'+val.utc+'</span></div><div><span>Internal Temperature :- </span><span>'+val.internal_temperature+'</span></div><div><span>Mode of Transport :- </span><span>'+val.mode_of_Transport+'</span></div><div><span>Message Number :- </span><span>'+val.message_Number+'</span></div><div><span>Temp Measurment :- </span><span>'+val.temp_Measurment+'</span></div><div><span>Shipment Id :- </span><span>'+val.shipment_Id+'</span></div><div><span>Shipment Num :- </span><span>'+val.shipment_Num+'</span></div><div><span>Device Id :- </span><span>'+val.device_Id+'</span></div><div><span>Event Name :- </span><span>'+val.event_Name+'</span></div><div><span>Event S.No :- </span><span>'+val.event_SNo+'</span></div></div>';
 		 			             		var val_data = val.altitude;
 		 		     						var tabletr = '<tr ondblclick="javascript:TableViewDataTranscation(\''+val_data+'\');"><td>'+val.shipment_Num+'</td><td>'+val.device_Id+'</td><td style="font-size:'+font_size+'px;">'+val.event_Name+'</td><td>'+val.partner_From+'</td><td>'+val.internal_temperature+'<sup style="font-size:8px;font-weight:bold;">0</sup>'+val.temp_Measurment+'</td><td>'+date_Time+'</td><td>'+val.mode_of_Transport+'</td></tr>';
 		 		             				$('#shipmentdatalistshow>tbody').append(tabletr); 
 		 		             				//var json_table = 
 		 		                  			             						
 		 		 						} 
 		 		 					//alert(tabletr);
 		 		 				});
 						
 						
 					}
 				var shipment = $(".two_view_"+shipment_Id).html();
 				$(".shipment_name").html("<div class='row'>"+shipment+"</div>");
 				
 				$("#shipmentdatalistshow").DataTable();
 				
 			/* 	$.each(filters,function(kew,val){ */
 			/* 		if(event_SNo_c == val.event_SNo)
 						{
 						//alert(kew);
 						var status_length = val.event_Name.length;
	             		if(status_length > 15)
	             			{
	             				var font_size = "10";
	             			}else{
	             				var font_size = "12";
	             			}
     						var tabletr = "<tr><td>"+val.shipment_Num+"</td><td>"+val.device_Id+"</td><td style='font-size:"+font_size+"px;'>"+val.event_Name+"</td><td>"+val.report_type+"</td><td>"+val.internal_temperature+"<sup style='font-size:8px;font-weight:bold;'>0</sup>"+val.temp_Measurment+"</td><td>"+val.bat+"</td><td>"+val.mode_of_Transport+"</td></tr>";
             				//$('#draftTableaa>tbody').append(tabletr); 
             				//var json_table = 
                  			             						
 						} */
 					//alert(tabletr);
 				/* }); */
 				
 				//alert($("#shipmentdatalistshow").text());       
 		/* 		var myRows = [];

 	   			var $th = $('#shipmentdatalistshow th');
 	   			$('#shipmentdatalistshow tbody tr').each(function(i, tr){
 	   			    var obj = {}, $tds = $(tr).find('td');
 	   			    $th.each(function(index, th){
 	   			        obj[$(th).text()] = $tds.eq(index).text();
 	   			    });
 	   			    myRows.push(obj);
 	   			});
  	   			var jsondataTable = JSON.stringify(myRows);
  	   			showtableforperShipment(jsondataTable); */
 			});
   			
   			//$("#").DataTable();
        }
        function updateEvent(shp_id,bp_id,shipment_Num,device_Id)
        {
        	/* $.getJSON("http://localhost:8080/SCMXPert/getAllEventTxns/"+shp_id+"/"+bp_id,function(filters){
        		$.each(filters,function(key,values){
        			//alert(value);
        		});
        		
        	}); */
        	$.cookie("shp_id", shp_id);
    		$.cookie("shipment_Num",shipment_Num);
			$.cookie("device_Id",device_Id);
	        window.location.href = "UpdateShipmentEvent.jsp";
        	
        }
        function CompleteShipment(shp_id,bp_id,shipment_Num,device_Id)
        {
        	$.cookie("shp_id", shp_id);
        	$.cookie("shipment_Num",shipment_Num);
			$.cookie("device_Id",device_Id);
	        window.location.href = "CompleteShipment.jsp";
        }
        function TableViewDataTranscation(val)
        {
        //alert(val);
        	
        	/* $.each(data,function(key,value){
        		alert(value.altitude);
        		var tabledataview = '<div class=""><div><span>Altitude :- </span><span>'+value.altitude+'</span></div><div><span>Battery :- </span><span>'+value.bat+'</span></div><div><span>Distance :- </span><span>'+value.distance+'</span></div><div><span>Latitude :- </span><span>'+value.latitude+'</span></div><div><span>Longitude :- </span><span>'+value.longitude+'</span></div><div><span>Report Type :- </span><span>'+value.report_type+'</span></div><div><span>Sensor Id :- </span><span>'+value.sensor_id+'</span></div><div><span>Speed :- </span><span>'+value.speed+'</span></div><div><span>UTC TIME :- </span><span>'+value.utc+'</span></div><div><span>Internal Temperature :- </span><span>'+value.internal_temperature+'</span></div><div><span>Mode of Transport :- </span><span>'+value.mode_of_Transport+'</span></div><div><span>Message Number :- </span><span>'+value.message_Number+'</span></div><div><span>Temp Measurment :- </span><span>'+value.temp_Measurment+'</span></div><div><span>Shipment Id :- </span><span>'+value.shipment_Id+'</span></div><div><span>Shipment Num :- </span><span>'+value.shipment_Num+'</span></div><div><span>Device Id :- </span><span>'+value.device_Id+'</span></div><div><span>Event Name :- </span><span>'+value.event_Name+'</span></div><div><span>Event S.No :- </span><span>'+value.event_SNo+'</span></div></div>';
        		
        	}); */
        	
        	 $('.showviewdata').show();
        	$("body").css("overflow","hidden");
        	$("#backgroundBlur").show();
        }
        function mapPointsRoute(route_From,route_To,getPointsWays)
        {
        	console.log(getPointsWays);
        	 $("#showmap > div").remove();
        	$("#showmap").html('<div id="map" style="width:100%;height:455px;z-index:1;"></div>');
            L.mapquest.key = 'e8DYG9q9Zamy3iXMvD2iuo3mI93EGRHF';

            var map = L.mapquest.map('map', {
                center: [0,0],
                layers: L.mapquest.tileLayer('map'),
                zoom: 13
              });
			//alert(route_From);alert(route_To);
		//	alert(getPointsWays);

            L.mapquest.directions().route({
              start: '"'+route_From+'"',
              end: '"'+route_To+'"',
              waypoints: getPointsWays
            });
        }
        function showdetailslist(shipment_Id,device_id,utc_time,from,to,viewpoints)
        {
        	$(".info").hide();
/*         	$(".two_view_"+shipment_Id).css("transform"," transform .2s");
        	$(".two_view_"+shipment_Id).css({"transform": "scale(1.04)","box-shadow": "-5px 3px 30px #000","z-index":"1","position": "relative"}); */
        	$('.live_shipments_list ').removeClass("showlistcard");
        	$(".two_view_"+shipment_Id).addClass("showlistcard");
        	  $.getJSON("http://localhost:8080/SCMXPert/getShipmentTransactionDeviceData/"+shipment_Id,function(filter){
        		  $('#draftTable>tbody').empty();
        		  $.each(filter,function(key,value){
//        			  alert(value.mode_of_Transport);
        			  var tabletr = "<tr><td>"+value.shipment_Num+"</td><td>"+value.device_Id+"</td><td>"+value.event_Name+"</td><td>"+value.report_type+"</td><td>"+value.internal_temperature+"<sup style='font-size:8px;font-weight:bold;'>0</sup>"+value.temp_Measurment+"</td><td>"+value.bat+"</td><td>"+value.mode_of_Transport+"</td></tr>";
        			  $('#draftTable>tbody').append(tabletr);
        		  });
        		  
        	  });
        	 
        /*     $.getJSON('http://localhost:8080/SCMXPert/getDeviceData/'+device_id+'/'+utc_time, function(filter){
            	$('#tablelist_data>tbody').empty();
            	$.each(filter,function(key,value){
            		var tabletr = "<tr><td>"+value.message_Number+"</td><td>00001181</td><td>"+value.utc+"</td><td>"+value.report_type+"</td><td>"+value.internal_Temperature+"<sup style='font-size:8px;font-weight:bold;'>0</sup>"+value.temp_Measurment+"</td><td>"+value.bat+"</td><td>"+value.latitude+", "+ value.longitude+"</td><td>"+value.distance+"</td></tr>";
            		$('#tablelist_data>tbody').append(tabletr);
            	});
            }); */
            console.log(viewpoints);
             $(".showmap > div").remove();
        	$(".showmap").html('<div id="map" style="width:100%;height:400px;z-index:1;"></div>');
            L.mapquest.key = 'hOIVOcPqNee5A8KDPlsnfY8AgYvFXd57';

            var map = L.mapquest.map('map', {
              center: [0,0],
              layers: L.mapquest.tileLayer('map'),
              zoom: 12
            });

            L.mapquest.directions().route({
              start:  '"'+from+'"',
              end: '"'+to+'"',
              waypoints: viewpoints
            });  
        }
        
        function getdetails_data_list(shipment_Id,shipment_Num,filter)
        {
        	
        	/* $.getJSON('http://localhost:8080/SCMXPert/getShipmentTransac/'+shipment_Id, function(filter1){
        		//filter1.push(filter2);
        		getdetails_data_list2(shipment_Num,filter,filter1);  		
        	}); */
        	
        	
        }
        function getdetails_data_list2(shipment_Num,filter,filter1)
        {
        	/* $.each(filter,function(key,value){
        		
        		/* alert(value.report_type);
        		alert(value.internal_Temperature);
        		alert(value.bat);
        		alert(value.utc); */
        	/* 	console.log(value.report_type,value.internal_Temperature,value.bat,value.utc);
        	}); 
        	 */
      
      /*   	$.each(filter1,function(keye,valuee){
        		
        		if(shipment_Num == valuee.shipment_Num)
        			{
        			/* alert(valuee.shipment_Num);
            		alert(valuee.device_Id);
            		alert(valuee.event_Name);
            		alert(valuee.comments);
            		alert(valuee.mode_of_Transport); */
            		/* var slkdfj = [];
            		$.each(filter,function(key,value){ */
                		/* alert(value.report_type);
                		alert(value.internal_Temperature);
                		alert(value.bat);
                		alert(value.utc); */
                		/* var values = valuee.shipment_Num+','+valuee.device_Id+','+valuee.event_Name+','+valuee.comments+','+valuee.mode_of_Transport+','+value.report_type+','+value.internal_Temperature+','+value.bat+','+value.utc;
                		slkdfj.push(values); */
            			//console.log(valuee.shipment_Num,valuee.device_Id,valuee.event_Name,valuee.comments,valuee.mode_of_Transport,value.report_type,value.internal_Temperature,value.bat,value.utc);
                	/* });
            		alert(slkdfj.length);
            		console.log(slkdfj[slkdfj.length-1]);
            		
        			}
        		
        	}); */ 
        }
        
        function changebpid(scmid,bpid)
        {
        	$.cookie("SCM_id", scmid);
        	$.cookie("BP_ID", bpid);
        	 $.getJSON('http://localhost:8080/SCMXPert/getFiltersData/'+scmid, function(filter){
             	$.each(filter,function(key,value){
//             		console.log(value);
 				if(key == "device_Id")
 					{
 						$.each(value,function(keys,values){
 							var selectdevices = '<option value="'+values+'">'+values+'</option>';
 							$("#devices").append(selectdevices);
 						})
 					}
 					if(key == "departments")
 					{
 						$.each(value,function(keyss,valuess){
 							var selectdept = '<option value="'+valuess+'">'+valuess+'</option>';
 							$("#departments").append(selectdept);
 						})
 					}
 					if(key == "goods")
 					{
 						$.each(value,function(keys,values){
 							$.each(values,function(ke,val){
 								 if(ke == "goods_Item"){
 									var selectgoods = '<option value="'+val+'">'+val+'</option>';
 									$("#selectgoods").append(selectgoods);
 								} 
 							});
 						});
 					}
 				});
             });
		  /***   Get Data for Shipments through web services  ***  End***/
			liveshipments_list(scmid,bpid);
		    //Deliveryshipments_list(scmid,bpid);
       
        }
			
      /*   function resetform()
        {
        	$(".two_list").show();
        	  document.getElementById("formfilter").reset();
        	  
        } */
        function seachfilter()
        {
        	var from = $("#from").val().toLowerCase().trim();
        	var to = $("#to").val().toLowerCase().trim();
        	var goods = $("#selectgoods").val();
        	var date = $("#datepicker-13").val();
        	var delivery = $("#delivery").val();
        	var refer = $("#reference").val();
        	var device = $("#devices").val();
        	var bpval = $("#bpi_idchange").val();
   			 var scmval = $("#scmid").val();
  
        	
        /* 	 $.getJSON('http://localhost:8080/SCMXPert/getShipments/'+scmval+'/'+bpval, function(filter){
        		var my_json = JSON.stringify(filter);
        		/* var filter_json = find_in_object(JSON.parse(my_json),{route_From:from});
        		alert(filter_json); 
        		var filtered=my_json.filter(function(item){
        		    return item.route_From==from;         
        		});
        		console.log(filtered);
        		 
        	 }); */
        	var dept = $("#departments").val();
        	var error = document.getElementById("error_filter");
        	if(from == '' && to == '' && goods == '' && delivery == '' && refer == '' && device == '' && dept == '' && date == '')
        		{
        			var error_value = "Please Select Atleast one filter";
        			error.innerHTML= error_value;
        			return false;
        		}else{
        			var error_value = "";
        			error.innerHTML= error_value;
        			$(".two_list").hide();
        			if(from != '' && to == '')
    				{
    				
    				
    					$(".live_shipments>div").filter(".from_"+from).show();
    					$.getJSON('http://localhost:8080/SCMXPert/getShipments/SCM0001/BP0001', function(filter){
    						var ships_cordinates = [];
    						$.each(filter,function(key,value){
    							//alert(from);
    							if(value.route_From.toLowerCase() == from && value.delivered_Status != "Delivered")
    								{
    								/* alert(value.wayPoints[0]);
    								alert(value.wayPoints[1]);
    								alert(value.wayPoints[2]); */
    									//var way_points = value.wayPoints.length;
    									/* alert(way_points); */
    									//var co_ordinate = value.wayPoints[way_points-1];
    									/* alert(co_ordinate); */
    									//mapOnLoad();
    									//ships_cordinates.push(co_ordinate);
    									//alert(datajhsdf);
    					 				var var_length = value.wayPoints.length;
    				            		var datajhsdf = value.wayPoints[var_length-1];
    				            		
    				            		var newstr = datajhsdf.join(', ');
    				            		//console.log("hellokjsdf kjsdnfkjsdf "+newstr);
    				            		//console.log(newstr);
    				            		ships_cordinates.push(newstr); 
    									
    								}
    							if(value.route_From.toLowerCase() == from && value.delivered_Status == "Delivered")
								{
								/* alert(value.wayPoints[0]);
								alert(value.wayPoints[1]);
								alert(value.wayPoints[2]); */
									//var way_points = value.wayPoints.length;
									/* alert(way_points); */
									//var co_ordinate = value.wayPoints[way_points-1];
									/* alert(co_ordinate); */
									//mapOnLoad();
									//ships_cordinates.push(co_ordinate);
									//alert(datajhsdf);
					 				var var_length = value.wayPoints.length;
				            		var datajhsdf = value.wayPoints[var_length-1];
				            		
				            		var newstr = datajhsdf.join(', ');
				            		//console.log("hellokjsdf kjsdnfkjsdf "+newstr);
				            		//console.log(newstr);
				            		ships_cordinates.push(newstr); 
									
								}
    						});
    						//var geocoordinates = "["+ships_cordinates+"]";
    						//alert(ships_cordinates);
    						//$('.live_shipments').html(geocoordinates);
    					/* 	$(".showmap > div").remove();
    					  	$(".showmap").html('<div id="map" style="width:100%;height:400px;"></div>');
    						L.mapquest.key = 'hOIVOcPqNee5A8KDPlsnfY8AgYvFXd57';
    							$('.live_shipments').addClass(geocoordinates); */
    					      // Geocode three locations, then call the createMap callback
    					      //L.mapquest.geocoding().geocode(geocoordinates, createMap);
    						//	alert(ships_cordinates);
    						mapOnLoad(ships_cordinates);
    					});
    					//var co_data = $(".from_coordinates_"+from).length;
    					//alert(co_data);
    				}
/*     			if(from != '' && to != '')
    			{
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
    			}
				if(to != '' && from != '' && goods != '')
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				}
    			if(to != '' && from != '' && goods == '')
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				}
    			if(to != '' && from != '' && goods != '' && delivery != '')
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				}
    			if(to != '' && from != '' && goods != '' && delivery == '')
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				}
    			if(to != '' && from != '' && goods != '' && delivery != '' && refer != '' )
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				}
    			if(to != '' && from != '' && goods != '' && delivery != '' && refer == '' )
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				}
    			if(to != '' && from != '' && goods != '' && delivery != '' && refer != '' && device != '')
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				}
    			if(to != '' && from != '' && goods != '' && delivery != '' && refer != '' && device == '')
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				}
    			
    			if(to != '' && from != '' && goods != '' && delivery != '' && refer != '' && device != '' && dept != '')
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				
				}
    			if(to != '' && from != '' && goods != '' && delivery != '' && refer != '' && device != '' && dept == '')
				{
					$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				
				} */
    			
    			
    			/* from */
    			
    			if(from != '' && (to == '' || goods == '' || date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
    			{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).show();	
    			}
    			if(from != '' && to != '' && (goods == '' || date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
				{
    				alert(to);
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
				}
    			if(from != '' && to != '' && goods != '' && ( date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).show();
				}
    			if(from != '' && to != '' && goods != '' && delivery != ''  && (date == ''  || refer == '' || device == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".date_"+date).show();
				}
    			if(from != '' && to != '' && goods != '' && delivery != ''  && date != '' && (refer == '' || device == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".date_"+date).show();
				}
    			if(from != '' && to != '' && goods != '' && delivery != '' && refer != '' && date != ''  && ( device == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".date_"+date).filter(".refer_"+refer).show();
				}
    			if(from != '' && to != '' && goods != '' && delivery != '' && refer != '' &&  device != '' && date != ''  && dept == '')
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".date_"+date).filter(".refer_"+refer).filter(".device_"+device).show();
				}
    			
    			/* to */
    			
     			if(to != '' && (from == '' || goods == '' || date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
    			{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".to_"+to).show();	
    			}
     			/* 
    			if(to != '' && from != '' && goods != '' && ( date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".to_"+to).filter(".from_"+from).filter(".goods_"+goods).show();
				}
    			if(to != '' && from != '' && goods != '' && delivery != '' && ( date == '' || refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".to_"+to).filter(".from_"+from).filter(".goods_"+goods).filter(".delivery_"+delivery).show();
				}
    			if(to != '' && from != '' && goods != '' && delivery != '' &&  date != '' && (refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".to_"+to).filter(".from_"+from).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".date_"+date).show();
				}
    			if(to != '' && from != '' && goods != '' && delivery != '' && refer != '' &&  date != '' && ( device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".to_"+to).filter(".from_"+from).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".refer_"+refer).filter(".date_"+date).show();
				}
    			goods  */
    			 
    			if(goods != '' && (from == '' || to == '' ||  date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
    			{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".goods_"+goods).show();
    			}
    			if(goods != '' && from != '' && (to == '' ||  date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".goods_"+goods).show();
				}
    			if(goods != '' && from != '' && to != '' && ( date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).show();
				}
    			/*		if(goods != '' && from != '' && (to == '' ||  date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".goods_"+goods).show();
				}
    			if(goods != '' && from != '' && to != '' && ( date == '' || delivery == '' || refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).show();
				}
    			if(goods != '' && from != '' && to != '' && delivery != '' && ( date == '' || refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).show();
				}
    			if(goods != '' && from != '' && to != '' && delivery != '' &&  date != '' && (refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".date_"+date).show();
				}
    			if(goods != '' && from != '' && to != '' && delivery != '' && refer != '' &&  date != '' && ( device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".refer_"+refer).filter(".date_"+date).show();
				}
    			
    			 Delivery*/ 
    			if(date != '' && (from == '' || to == '' || goods == '' || delivery == '' || refer == '' || device == '' || dept == ''))
        			{
        				
        				$(".live_shipments>div,.delivered_shipments>div").filter(".shipdate_"+date).show();
        			}
    			 
     			
     			
     			
     			
    			 
    			if(delivery != '' && (from == '' || to == '' || goods == '' || date == '' || refer == '' || device == '' || dept == ''))
    			{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".delivery_"+delivery).show();
    			}
    			if(device != '' && (from == '' || to == '' || goods == '' || date == '' || delivery == '' || refer == '' || dept == ''))
    			{
    		      	//alert(device);
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".device_"+device).show();
    			}
    			if(device != '' && from != '' && (to == '' || goods == '' || date == '' || delivery == '' || refer == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".device_"+device).show();
				}
    			if(device != '' && from != '' && to != '' && (goods == '' || date == '' || delivery == '' || refer == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".device_"+device).show();
				}
    			{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".date_"+date).show();
    			}
    			if(date != '' && from != '' && (to == '' || goods == '' || device == '' || delivery == '' || refer == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".date_"+date).show();
				}
    			if(date != '' && from != '' && to != '' && (goods == '' || device == '' || delivery == '' || refer == '' || dept == ''))
				{
    				
    				$(".live_shipments>div,.delivered_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".date_"+date).show();
				}
    			/*	if(delivery != '' && from != '' && (to == '' || goods == '' || date == '' || refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".delivery_"+delivery).show();
				}
    			if(delivery != '' && from != '' && to != '' && (goods == '' || date == '' || refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".delivery_"+delivery).show();
				}
    			if(delivery != '' && from != '' && to != '' && goods != '' && ( date == '' || refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).show();
				}
    			if(delivery != '' && from != '' && to != '' && goods != '' &&  date != '' && (refer == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".date_"+date).show();
				}
    			if(delivery != '' && from != '' && to != '' && goods != '' && refer != '' &&  date != '' && ( device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".refer_"+refer).filter(".date_"+date).show();
				}
    			/* Refer 
    			
    			if(refer != '' && (from == '' || to == '' || goods == '' || date == '' || delivery == '' || device == '' || dept == ''))
    			{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".refer_"+refer).show();
    			}
    			if(refer != '' && from != '' && (to == '' || goods == '' || date == '' || delivery == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".refer_"+refer).show();
				}
    			if(refer != '' && from != '' && to != '' && (goods == '' || date == '' || delivery == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".refer_"+refer).show();
				}
    			if(refer != '' && from != '' && to != '' && goods != '' && ( date == '' || delivery == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".refer_"+refer).show();
				}
    			if(refer != '' && from != '' && to != '' && goods != '' &&  date != '' && (delivery == '' || device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".refer_"+refer).filter(".date_"+date).show();
				}
    			if(refer != '' && from != '' && to != '' && goods != '' && delivery != '' &&  date != '' && ( device == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".refer_"+refer).filter(".date_"+date).show();
				}
    			
    			/* Device 
    			
    			
    			if(device != '' && from != '' && to != '' && goods != '' && ( date == '' || delivery == '' || refer == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".device_"+device).show();
				}
    			if(device != '' && from != '' && to != '' && goods != '' && delivery != '' && date != '' && ( refer == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".device_"+device).filter(".date_"+date).show();
				}
    			if(device != '' && from != '' && to != '' && goods != '' && delivery != '' &&  date != '' && ( refer == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".device_"+device).filter(".date_"+date).show();
				}
    			
    			/* Date 
    			
    				if(date != '' && (from == '' || to == '' || goods == '' || device == '' || delivery == '' || refer == '' || dept == ''))
    			
    			if(date != '' && from != '' && to != '' && goods != '' && ( device == '' || delivery == '' || refer == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".date_"+date).show();
				}
    			if(date != '' && from != '' && to != '' && goods != '' && delivery != '' && (device == '' || refer == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".date_"+date).show();
				}
    			if(date != '' && from != '' && to != '' && goods != '' && delivery != '' && device != '' && ( refer == '' || dept == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".device_"+device).filter(".date_"+date).show();
				}
    			if(date != '' && from != '' && to != '' && goods != '' && delivery != '' &&  device != '' &&  refer != '' || dept == '')
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".device_"+device).filter(".date_"+date).show();
				}
    			
    			
    			/* Dept 
    			
    			
    			if(dept != '' && from != '' && to != '' && (goods == '' || date == '' || delivery == '' || refer == '' || device == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".dept_"+dept).show();
				}
    			if(dept != '' && from != '' && to != '' && goods != '' && ( date == '' || delivery == '' || refer == '' || device == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".dept_"+dept).show();
				}
    			if(dept != '' && from != '' && to != '' && goods != '' && delivery != '' && ( date == '' || refer == '' || device == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".dept_"+dept).show();
				}
    			if(dept != '' && from != '' && to != '' && goods != '' && delivery != '' &&  date != '' && ( refer == '' || device == ''))
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".dept_"+dept).filter(".date_"+date).show();
				}
    			if(dept != '' && from != '' && to != '' && goods != '' && delivery != '' &&  date != '' &&  refer != '' || device == '')
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".dept_"+dept).filter(".date_"+date).filter(".refer_"+refer).show();
				}
    			if(dept != '' && from != '' && to != '' && goods != '' && delivery != '' &&  refer != '' &&  date != '' && device != '')
				{
    				$(".two_list").hide(); 
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".goods_"+goods).filter(".delivery_"+delivery).filter(".device_"+refer).filter(".device_"+device).filter(".dept_"+dept).filter(".date_"+date).show();
				} */
    			
    			
    			
    			
    			
    			
    			
    			
    			/* 
    			if(to != '' && from == '')
    			{
    				$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).show();
    			}
    			if(to != '' && from != '' && device != '')
    			{
    				alert(".one_"+device);
    			$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".one_"+device).show();
    			} */
            	//$(".live_shipments>div").filter(".from_"+from).filter(".to_"+to).filter(".one_"+device).show();
        			
        		}
			
        	
        }
        function find_in_object(my_object,my_criteria){
        	return my_object.filter(function(obj) {
        	    return Object.keys(my_criteria).every(function(c) {
        	      return obj[c] == my_criteria[c];
        	    });
        	  });
        }
        function exportTableToCSV(filename) {
            var csv = [];
            var rows = document.querySelectorAll("table tr");
           // alert(rows.length);
            for (var i = 0; i < rows.length; i++) {
                var row = [], cols = rows[i].querySelectorAll("td, th");
                
                for (var j = 0; j < cols.length; j++) 
                    row.push(cols[j].innerText);
                
                csv.push(row.join(","));        
            }

            // Download CSV file
            downloadCSV(csv.join("\n"), filename);
        }
        function downloadCSV(csv, filename) {
            var csvFile;
            var downloadLink;

            // CSV file
            csvFile = new Blob([csv], {type: "text/csv"});

            // Download link
            downloadLink = document.createElement("a");

            // File name
            downloadLink.download = filename;

            // Create a link to the file
            downloadLink.href = window.URL.createObjectURL(csvFile);

            // Hide download link
            downloadLink.style.display = "none";

            // Add the link to DOM
            document.body.appendChild(downloadLink);

            // Click download link
            downloadLink.click();
        }

      </script>
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
		<input type="text" class="form-control" placeholder="Enter Your Location" id="delivery" style="font-size: 10px;height: 22px;padding: 1px;padding-left: 5px;" autocomplete="off"/>
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
      	<table class="table table-striped table-bordered draftTableaa" id="shipmentdatalistshow" style="overflow-x:auto;font-size:11px;margin-top:1%;">
			<thead class="bg-color" style="color:#fff;">
				<tr>
					<th>Delivery No.</th>
					<th>Device Id</th>
					<th>Event Name</th>
					<th>BP Id </th>
					<th>Internal Temp.</th>
					<th>Date</th>
					<th>Mode Of Transport</th>
				</tr>
			</thead>
			<tbody></tbody></table>
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
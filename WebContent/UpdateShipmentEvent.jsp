<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SCMXpert Dashboard</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <jsp:include page="./View/jsfiles.jsp" />
<!--      <link href = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"/>
 <link href = "https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="./css/global.css"/>
<!-- <link rel="stylesheet" href="./css/bootstrap.min.css"/>
<link rel="javascript" href="./js/jquery.min.js"/>
<link rel="javascript" href="./js/popper.min.js"/> -->
<!-- <link rel="javascript" href="./js/bootstrap.min.js"/> -->

<!-- 
<link rel="stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"/>
<link rel="stylesheet" href = "https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
<script rel="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script rel="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script rel="javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src=" https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
<script src="./js/jquery.tabletojson.js"></script> -->
  <script src="./js/jquery.cookie.js"></script>
<!--   <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet"/>
  <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->
  <script src="./js/All.js"></script>
<script src="./js/Devices.js"></script>
<script src="./js/CommonFunction.js"></script>
<style>

@media only screen and (min-width: 600px) {
  /* For mobile phones: */
  .row-padding{padding:0% 17%;}
/*   [class*="col-"] {
    width: 100%;
  } */
}
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
 #tablelist_data>tbody>tr:hover{ transform: scale(1.3);background:blue;color:#fff;box-shadow: -5px 3px 30px #000;}
.live_shipments_list{transition: transform .2s;/* Animation */}
.live_shipments_list:hover{transform: scale(1.04);box-shadow: -5px 3px 30px #000;z-index: 1;position: relative;}
.header-menu{color:#fff;float:left;margin-top:1.9%;margin-left:1%;}
.header-menu a{color:#fff;font-weight:bold;}
.header-menu:hover{background:#fff;border-radius:5px 5px 0px 0px;}
.header-menu:hover a{color:#274a6f;}
.site-title{color: #ffffff;text-shadow: 0 4px 0 rgba(100,100,100,1), 0 8px 3px rgba(0,0,0,0.7);font-weight: 600;font-size: 38px;padding: 1%;font-weight: bold;}
.site-title a{text-decoration:none;color:#ffffff;}
.site-title:hover a{text-decoration:none;color:#ffffff;}
.hide_show_icon,.show_hide_icon{font-weight: bold;cursor:pointer;text-align:center;float:right;margin-top:1%;}
.hide_show_icon, .show_remaing{display:none;}
.showviewdata{display:none;width:80%;margin:2% 10%;background:#fff;border-radius:5px;z-index:2;position:absolute;height:90%;top:10px;bottom:10px;}
#backgroundBlur{background: #000000;opacity: .7;display: none;position: fixed;top: 0;left: 0;width: 100%;height: 100%;z-index: 1;}
.view_body_boder{width:95%;height:80%;border:1px solid #000;margin:auto;box-shadow:0px 0px 5px #000;}
.view_body_header{width:100%;height:30px;padding-top:1%;padding-right:3%;}
.nodes{width:55px;font-size:11px;font-weight:bold;border:1px solid #000;float:left;text-align:center;margin:1px;float:right;border-radius:3px 3px 0px 0px;}
footer{width:100%;height:50px;background-color:#000;}
#scanboxview{display:none;}
.bodyblur{width:100%;height:100%;background:#000000e0;position:absolute;z-index:1;display:none;}
.bodyblur1{width:100%;height:100%;background:#000000e0;position:absolute;z-index:1;display:none;}
#locationboxview{display:none;background:#fff;border:1px solid #000;top:1px;}
.body_blur{width:100%;height:100%;overflow:hidden;position:fixed;top:0px;z-index:1;background:#00000069;display:none;}
.AddEventBlock{width:30%;height:200px;background:#fff;border-radius:5px;top:17rem;position:fixed;z-index:2;margin:0% 35%;display:none;}
.AddButtonIcon{cursor:pointer;}
#successalert{display:none;}

/* #draftTable_length{float:left;} */
/* #draftTable_wrapper{overflow-x:auto;} */

</style>
</head>
<body>
      
          <!-- Javascript -->
      <script type="text/javascript">
        $(document).ready(function(){
        	$('#convert-table').click( function() {
        		  var table = $('#inboxesvalues').tableToJSON(); // Convert the table into a javascript object
        		  console.log(table);
        		  alert(JSON.stringify(table));
        		});
        	$("#typeOfReferences").on("change",function(){
        		var textval = $(this).val();
        		if(textval != '')
        			{
        				$("#error").empty();
        				$(this).focus().css("border","1px solid #ced4da");
        			}
        	});
        	$("#event_id_val").on("keypress",function(){
        		$("#error").empty();
        		$(this).focus().css("border","1px solid #ced4da");
        	});
        	$("#event_type_val").on("keypress",function(){
        		$("#error").empty();
        		$(this).focus().css("border","1px solid #ced4da");
        	});
        	$("#event_partner_from").on("keypress",function(){
        		$("#error").empty();
        		$(this).focus().css("border","1px solid #ced4da");
        	});
        	$("#event_reference").on("keypress",function(){
        		$("#error").empty();
        		$(this).focus().css("border","1px solid #ced4da");
        	});
        	$("#typeOfReferences1").on("change",function(){
        		var textval = $(this).val();
        		if(textval != '')
        			{
        				$("#error").empty();
        				$(this).focus().css("border","1px solid #ced4da");
        			}
        	});

       	 $("#bpi_idchange,#scmid").on("change",function(){
       		$.removeCookie("cust_name", { path: '/' });
    	        $.removeCookie("bp_id", { path: '/' });
       		 var bpval = $("#bpi_idchange").val();
       		 var scmval = $("#scmid").val();
       		 changebpid(scmval,bpval);
       	 });
        	$("#updateEvent").on("click",function(){
        		var value=$("input:radio[name=event]:checked").val();
        		var partner = $("#partner_name_"+value).val();
            	var event = $("#event_name_"+value).val();
            	var datee = $("#event_date_"+value).val();
            	var shipment_number = $("#shipment_id").val();
        		var Event_Id = $("#event_id_val").val();
        		var Event_Type = $("#event_type_val").val();
        		
        	
        		var Partner_From = $("#event_partner_from").val();
        		var Event_Reference = $("#event_reference").val();
        		var Type_of_Reference1 = $("#typeOfReferences1").val();
        		var Type_of_Reference = $("#typeOfReferences").val();
        		var Event_Description = $("#event_description").val();
        		var error = document.getElementById("error");
        		var update_json_data = {
        				"shipment_Number" : shipment_number,
        				"partner" : partner,
        				"event" : event,
        				"dateandTime" : datee,
        				"eventId"  : Event_Id,
        				"eventType" :Event_Type,
        				"partnerFrom" : Partner_From,
        				"eventReferenceNumber"  : Event_Reference,
        				"typeOfReference" :Type_of_Reference1,
        				"comments" : Event_Description
        		}; 
        		
        		 var url = "http://localhost:8080/SCMXPert/updateEventShip";
        		 if(Type_of_Reference == ""){
						var text = "Select Reference";
						error.innerHTML = text;
						$("#typeOfReferences").focus().css("border","1px solid red");
						return false;
        		 }
        		 if(Event_Id == ""){
						var text = "Enter Event Id";
						error.innerHTML = text;
						$("#event_id_val").focus().css("border","1px solid red");
						return false;
  			 	}
        		 if(Event_Type == ""){
						var text = "Enter Event";
						error.innerHTML = text;
						$("#event_type_val").focus().css("border","1px solid red");
						return false;
  				}
        		 if(Partner_From == ""){
						var text = "Event Partner From";
						error.innerHTML = text;
						$("#event_partner_from").focus().css("border","1px solid red");
						return false;
  			 	}        		 
        		 if(Event_Reference == ""){
						var text = "Event Reference Id";
						error.innerHTML = text;
						$("#event_reference").focus().css("border","1px solid red");
						return false;
  			 	}
        		 if(Type_of_Reference1 == ""){
						var text = "Select Reference";
						error.innerHTML = text;
						$("#typeOfReferences1").focus().css("border","1px solid red");
						return false;
     			 }
        		
        		// console.log(JSON.stringify(update_json_data));return false;
        		// alert(JSON.stringify(update_json_data));return false;
        		  $.ajax({
        			 type:"post",
        			 url:url,
        			 headers: { Accept : "application/json",
        						'Content-Type': "application/json" 
        				 		}, 
        			 data: JSON.stringify(update_json_data),
        			 success:function(response){
//        				 window.location.href = "Dashboard.jsp";

					$("#successalert").show();
		        	var ship_id = $.cookie("shp_id");
		        	$("#inboxesvalues>tbody").empty();
	        	 	$.getJSON("http://localhost:8080/SCMXPert/getAllTxns/"+ship_id,function(filters){
	        	 		//alert(filters);
	        	 		var event_sNO = []; 
	     				$.each(filters,function(key,value){
	     					event_sNO.push(value.event_SNo);
	     					//partner_From.push(value.partner_From);
	     					//var part_no = value.partner_From;
	     					
	     					/* $.each(value,function(keyssssss,values){
	     						alert(keyssssss);
	     					}); */
	     				});
	     				
	     				
	     				event_sNO.sort(function(a, b){return a-b});
	     				for(i=0;i<event_sNO.length;i++)
	 					{
	     					var event_num = event_sNO[i];
	 		 				$.each(filters,function(kew,val){
	 		 					
	 		 		 					if(event_num == val.event_SNo)
	 		 		 						{
	 		 		 						//alert(kew);
	 		 		 						var status_length = val.event_Name.length;
	 		 			             	/* 	if(status_length > 15)
	 		 			             			{
	 		 			             				var font_size = "10";
	 		 			             			}else{
	 		 			             				var font_size = "12";
	 		 			             			 }*/
	 		 			             		//var val_data = '<div class=""><div><span>Altitude :- </span><span>'+val.altitude+'</span></div><div><span>Battery :- </span><span>'+val.bat+'</span></div><div><span>Distance :- </span><span>'+val.distance+'</span></div><div><span>Latitude :- </span><span>'+val.latitude+'</span></div><div><span>Longitude :- </span><span>'+val.longitude+'</span></div><div><span>Report Type :- </span><span>'+val.report_type+'</span></div><div><span>Sensor Id :- </span><span>'+val.sensor_id+'</span></div><div><span>Speed :- </span><span>'+val.speed+'</span></div><div><span>UTC TIME :- </span><span>'+val.utc+'</span></div><div><span>Internal Temperature :- </span><span>'+val.internal_temperature+'</span></div><div><span>Mode of Transport :- </span><span>'+val.mode_of_Transport+'</span></div><div><span>Message Number :- </span><span>'+val.message_Number+'</span></div><div><span>Temp Measurment :- </span><span>'+val.temp_Measurment+'</span></div><div><span>Shipment Id :- </span><span>'+val.shipment_Id+'</span></div><div><span>Shipment Num :- </span><span>'+val.shipment_Num+'</span></div><div><span>Device Id :- </span><span>'+val.device_Id+'</span></div><div><span>Event Name :- </span><span>'+val.event_Name+'</span></div><div><span>Event S.No :- </span><span>'+val.event_SNo+'</span></div></div>';
	 		 			             		//var val_data = val.altitude;
	 		 			             		var key = kew+1;
	 		 			             		var theDate = new Date( Date.parse(val.event_Exec_Date));
	 		 			               		var date_create = theDate.toLocaleDateString();
	 		 			             		/* if(val.event_Status == "Completed"){
	 		 			         
	 		 			             			var eventsboxes = '<tr><td class="p-1"></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+val.event_Id+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 40px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;"   disabled="disabled"/> </td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_'+val.event_Id+'" value="'+val.partner_From+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;" disabled="disabled" /></td><td class="pl-1"><input type="text"  disabled="disabled" class="form-control mb-1  inputboxesevents" id="event_name_'+val.event_Id+'" value="'+val.event_Name+'" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" disabled="disabled" class="form-control mb-1 inputboxesevents" id="event_date_'+val.event_Id+'" value="'+date_create+'" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;" /></td></tr>';
	 		 			             		}else{
	 		 			             			var eventsboxes = '<tr><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+val.event_Id+'"/></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+val.event_Id+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 40px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;background: #e9ecef;"   disabled="disabled"/> </td><td class="pl-1"><input type="text"   disabled="disabled" class="form-control mb-1 inputboxesevents" id="partner_name_'+val.event_Id+'" value="'+val.partner_From+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text"   disabled="disabled" class="form-control mb-1  inputboxesevents" id="event_name_'+val.event_Id+'" value="'+val.event_Name+'" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents"  disabled="disabled" id="event_date_'+val.event_Id+'" value="'+date_create+'" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;" /></td></tr>';
			 			             		} */
	 		 			               	if(val.event_Status == "Completed"){
	 		 	 		 			         
	 		 			               	var eventsboxes = '<tr id="row_val_'+val.event_Id+'" class="Event_class" style="height:30px;"><td class="p-1"></td><td class="" style="font-size: 10px;padding:1px;"><div class="completedBackground eventNum" id="'+val.event_Id+'">'+val.event_Id+'</div></td><td class="pl-1"><div class="completedBackground eventBp" id="partner_from_'+val.event_Id+'">'+val.partner_From+'</div></td><td class="pl-1"><div class="completedBackground eventName" id="event_name_'+val.event_Id+'">'+val.event_Name+'</div></td><td class="pl-1"><div class="completedBackground eventDate" id="date_'+val.event_Id+'">'+date_create+'</div></td><td class="pl-1"><div class="completedBackground eventStatus" id="event_status_'+val.event_Id+'">'+val.event_Status+'</div></td></tr>';
			 			             		}else{
			 			             			var eventsboxes = '<tr id="row_val_'+val.event_Id+'" class="Event_class" style="height:30px;"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+val.event_Id+'" id="'+val.event_Id+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div class="eventNum" id="'+val.event_Id+'">'+val.event_Id+'</div></td><td class="pl-1"><div class="eventBp" id="partner_from_'+val.event_Id+'">'+val.partner_From+'</div></td><td class="pl-1"><div class="eventName" id="event_name_'+val.event_Id+'">'+val.event_Name+'</div></td><td class="pl-1"><div class="eventDate" id="date_'+val.event_Id+'">'+date_create+'</div></td><td class="pl-1"><div class="eventStatus" id="event_status_'+val.event_Id+'">'+val.event_Status+'</div></td></tr>';
		 			             		}
	 		 			             		
	 		 			             		//alert(eventsboxes);
	 		 				 				$("#inboxesvalues>tbody").append(eventsboxes);
	 		 				 				$("#event_date_"+val.event_Id).datepicker();

	 		 				 				
	 		 		             				//var json_table = 
	 		 		                  			             						
	 		 		 						} 
	 		 		 					//alert(tabletr);
	 		 		 				});
	 						
	 						reset();
	 					}
	     				
	        	 	});
						
						
        			 }
        		 }); 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		//alert(JSON.stringify(update_json_data));
        	});
        	$("#btnSubmit").on("click",function(){
        		var value=$("input:radio[name=event]:checked").val();
					geteventvalueslist(value);
        		});
        	
        	
        
        	$("#delete_event").on("click",function(){
        		window.location.href = "Dashboard.jsp";
        	});
        	
        	
        	
        	
        	
        	var part_from = $.cookie("BP_ID");
        	var SCM_id = $.cookie("SCM_id");
        	var ship_id = $.cookie("shp_id");
        	var ship_num = $.cookie("shipment_Num");
			var device_id = $.cookie("device_Id");
        	 	$("#shipment_id").val(ship_id);
        	 	$("#shipment_number").val(ship_num);
        	 	$("#connected_device").val(device_id);
        	$.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+SCM_id, function( data ) { 	
        	 	$.each(data.typeOfReferences,function(keys,values){
    				//alert(values);
    				//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
    				 var select_typeOfReferences_items = '<option value="'+values+'">'+values+'</option>';
    				 $("#typeOfReferences,#typeOfReferences1").append(select_typeOfReferences_items);
    				 //typeOfReferences_select.push(select_typeOfReferences_items); 
    			});   
        	});
        	$.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+SCM_id, function( data ) { 	
        	 	$.each(data.business_Partner_Id,function(keys,values){
    				//alert(values);
    				//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
    				 var event_partner_from = '<option value="'+values+'">'+values+'</option>';
    				 $("#event_partner_from,#selectvalues").append(event_partner_from);
    				 //typeOfReferences_select.push(select_typeOfReferences_items); 
    			});   
        	});
        	$.getJSON( "http://localhost:8080/SCMXPert/getAllTxns/"+ship_id, function( data ) { 
        	//	alert(data);
        	 	$.each(data,function(keys,values){
    				//alert(values.event_Name);
    				//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
    				 var event_partner_from = '<option value="'+values.event_Name+'">'+values.event_Name+'</option>';
    				 $("#events_list_show").append(event_partner_from);
    				 //typeOfReferences_select.push(select_typeOfReferences_items); 
    			});   
        	});
        	 	
        	 	
        	 	
        	 	//$("#bp_id_number").val(part_from);
        	 	$.getJSON("http://localhost:8080/SCMXPert/getAllTxns/"+ship_id,function(filters){
        	 		//alert(filters);
        	 		var event_sNO = []; 
     				$.each(filters,function(key,value){
     					event_sNO.push(value.event_SNo);
     					//partner_From.push(value.partner_From);
     					//var part_no = value.partner_From;
     					
     					/* $.each(value,function(keyssssss,values){
     						alert(keyssssss);
     					}); */
     				});
     				
     				
     				event_sNO.sort(function(a, b){return a-b});
     				for(i=0;i<event_sNO.length;i++)
 					{
     					var event_num = event_sNO[i];
 		 				$.each(filters,function(kew,val){
 		 					
 		 		 					if(event_num == val.event_SNo)
 		 		 						{
 		 		 						//alert(kew);
 		 		 						var status_length = val.event_Name.length;
 		 			             	/* 	if(status_length > 15)
 		 			             			{
 		 			             				var font_size = "10";
 		 			             			}else{
 		 			             				var font_size = "12";
 		 			             			 }*/
 		 			             		//var val_data = '<div class=""><div><span>Altitude :- </span><span>'+val.altitude+'</span></div><div><span>Battery :- </span><span>'+val.bat+'</span></div><div><span>Distance :- </span><span>'+val.distance+'</span></div><div><span>Latitude :- </span><span>'+val.latitude+'</span></div><div><span>Longitude :- </span><span>'+val.longitude+'</span></div><div><span>Report Type :- </span><span>'+val.report_type+'</span></div><div><span>Sensor Id :- </span><span>'+val.sensor_id+'</span></div><div><span>Speed :- </span><span>'+val.speed+'</span></div><div><span>UTC TIME :- </span><span>'+val.utc+'</span></div><div><span>Internal Temperature :- </span><span>'+val.internal_temperature+'</span></div><div><span>Mode of Transport :- </span><span>'+val.mode_of_Transport+'</span></div><div><span>Message Number :- </span><span>'+val.message_Number+'</span></div><div><span>Temp Measurment :- </span><span>'+val.temp_Measurment+'</span></div><div><span>Shipment Id :- </span><span>'+val.shipment_Id+'</span></div><div><span>Shipment Num :- </span><span>'+val.shipment_Num+'</span></div><div><span>Device Id :- </span><span>'+val.device_Id+'</span></div><div><span>Event Name :- </span><span>'+val.event_Name+'</span></div><div><span>Event S.No :- </span><span>'+val.event_SNo+'</span></div></div>';
 		 			             		//var val_data = val.altitude;
 		 			             		var key = kew+1;
 		 			             		var theDate = new Date( Date.parse(val.event_Exec_Date));
 		 			               		var date_create = theDate.toLocaleDateString();
 		 			             		/* if(val.event_Status == "Completed"){
 		 			         
 		 			             			var eventsboxes = '<tr><td class="p-1"></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+val.event_Id+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 40px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;"   disabled="disabled"/> </td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_'+val.event_Id+'" value="'+val.partner_From+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;" disabled="disabled" /></td><td class="pl-1"><input type="text"  disabled="disabled" class="form-control mb-1  inputboxesevents" id="event_name_'+val.event_Id+'" value="'+val.event_Name+'" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" disabled="disabled" class="form-control mb-1 inputboxesevents" id="event_date_'+val.event_Id+'" value="'+date_create+'" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;" /></td></tr>';
 		 			             		}else{
 		 			             			var eventsboxes = '<tr><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+val.event_Id+'"/></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+val.event_Id+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 40px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;background: #e9ecef;"   disabled="disabled"/> </td><td class="pl-1"><input type="text"   disabled="disabled" class="form-control mb-1 inputboxesevents" id="partner_name_'+val.event_Id+'" value="'+val.partner_From+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text"   disabled="disabled" class="form-control mb-1  inputboxesevents" id="event_name_'+val.event_Id+'" value="'+val.event_Name+'" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents"  disabled="disabled" id="event_date_'+val.event_Id+'" value="'+date_create+'" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;" /></td></tr>';
		 			             		} */
 		 			               	if(val.event_Status == "Completed"){
 		 	 		 			         
 		 			               	var eventsboxes = '<tr id="row_val_'+val.event_Id+'" class="Event_class" style="height:30px;"><td class="p-1"></td><td class="" style="font-size: 10px;padding:1px;"><div class="completedBackground eventNum" id="'+val.event_Id+'">'+val.event_Id+'</div></td><td class="pl-1"><div class="completedBackground eventBp" id="partner_from_'+val.event_Id+'">'+val.partner_From+'</div></td><td class="pl-1"><div class="completedBackground eventName" id="event_name_'+val.event_Id+'">'+val.event_Name+'</div></td><td class="pl-1"><div class="completedBackground eventDate" id="date_'+val.event_Id+'">'+date_create+'</div></td><td class="pl-1"><div class="completedBackground eventStatus" id="event_status_'+val.event_Id+'">'+val.event_Status+'</div></td></tr>';
		 			             		}else{
		 			             			var eventsboxes = '<tr id="row_val_'+val.event_Id+'" class="Event_class" style="height:30px;"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+val.event_Id+'" id="'+val.event_Id+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div class="eventNum" id="'+val.event_Id+'">'+val.event_Id+'</div></td><td class="pl-1"><div class="eventBp" id="partner_from_'+val.event_Id+'">'+val.partner_From+'</div></td><td class="pl-1"><div class="eventName" id="event_name_'+val.event_Id+'">'+val.event_Name+'</div></td><td class="pl-1"><div class="eventDate" id="date_'+val.event_Id+'">'+date_create+'</div></td><td class="pl-1"><div class="eventStatus" id="event_status_'+val.event_Id+'">'+val.event_Status+'</div></td></tr>';
	 			             		}
 		 			             		
 		 			             		//alert(eventsboxes);
 		 				 				$("#inboxesvalues>tbody").append(eventsboxes);
 		 				 				$("#event_date_"+val.event_Id).datepicker();

 		 				 				
 		 		             				//var json_table = 
 		 		                  			             						
 		 		 						} 
 		 		 					//alert(tabletr);
 		 		 				});
 						
 						
 					}
     				
        	 	});
        	 	
        	 	
        	 	
        	 	
        	 	
        	 	
        	 	
        	 	
        	 	
        	 	
		    	$('#draftTable').DataTable();
     
        	
        	
        	
        	    	/* $.ajax( {
        	    		type:'Get',
        	    		crossDomain: true,
        	    		url:'http://localhost:8090/Allcustomerdetails',
        	    		 dataType: 'json',
        	    	        /* headers: {
        	    	          'Api-Appid': '********',
        	    	          'Api-Key': '*******',
        	    	          'Access-Control-Allow-Origin': '*'
        	    	        }, 
        	    		success:function(data) {
        	    		 console.log(data);
        	    		 
        	    		}

        	    		}); */
        	    	var randnumber = getRandom(10);
        	    	$("#internalshipment").val(randnumber);
        	    	$('.datepicker').datepicker();

        	    	$(".bodyblur,.bodyblur1").on("click",function(){
        	    		 $("#scanboxview,#locationboxview").hide();
         	    	    $(this).hide();
        	    	});
        	    	setTimeout(function(){
        	    	
        	    	    $("#scanboxview").hide();
        	    	    $(".bodyblur").hide();
        	    	}, 5000);
        	    	$("#scaninputnumber").on("click",function(){
        	    		$(this).css({"border":"1px solid #00000030","color":"#000"});
        	    	});
        	    	$("#CancelEvent,.body_blur,.close").on("click",function(){
        	    		$(".body_blur,.AddEventBlock").hide();
        	    		$("body").css("overflow","auto");
        	    	});
        	    	
        	});
        
        function getRandom(length) {
        	return Math.floor(Math.pow(10, length-1) + Math.random() * 9 * Math.pow(10, length-1));
        	}
        function reset()
        {
        	var Event_Id = $("#event_id_val").val("");
    		var Event_Type = $("#event_type_val").val("");
    		var Partner_From = $("#event_partner_from").val("");
    		var Event_Reference = $("#event_reference").val("");
    		var Type_of_Reference = $("#typeOfReferences1").val("Select Type Reference");
    		var Event_Description = $("#event_description").val("");	
        }   
        function geteventvalueslist(event)
        {
        	var part_from = $("#partner_from_"+event).text();
        	var event_name = $("#event_name_"+event).text();
        	//var event_date = $("#event_date_"+event).val();       
        	$("#event_id_val").val(event);
        	$("#event_type_val").val(event_name);
        	$("#event_partner_from").val(part_from);
        	
        }
        function scanbtn()
        {
        	$("header").css({"position":"absolute","z-index":"1"});
    		$(".bodyblur").show();
    		$('#scanboxview').show();
    		  setInterval(function(){ 
    			  $("#scanboxview").hide();
  	    	    $(".bodyblur").hide();
    		  }, 5000);
    		  var randnumber = getRandom(7);
  	    	$(".scaninputnumber").val(randnumber);
        }
        function addlocation()
        {
        	$("header").css({"position":"absolute","z-index":"1"});
    		$(".bodyblur1").show();
    		$('#locationboxview').show();

        }
        function checkvalidatedata()
        {
        	var shipInter = $("#internalshipment").val();
        	var shipScan = $("#scaninputnumber").val();
        	var wayship = $("#selectways").val();
        	var shipDesc = $("#shipdesc").val();
        	var shipbpLoc = $("#selectbplocation").val();
        	var shipSelLoc = $("#selectlocation").val();
        	var shipGoodType = $("#goodstype").val();
        	
        	if(shipScan == '')
        		{
        			$("#scaninputnumber").css({"border":"2px solid red","color":"red"}).attr("placeholder","Enter or Scan Your Shipment Number").focus();
        			return false;
        		}

        }
        function dialogboxAddEvent()
        {
        	$("body").css("overflow","hidden");
        	$(".body_blur,.AddEventBlock").show();       	
        }
        function selectBpName(valee)
        {
        	var SCM_id = $("#scmid").val();
        	$('#eventslist').empty();
        	$('#eventslist').append('<option value="">Select Event</option>');
        	$.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+SCM_id, function(data) {
        		$.each(data.bussinesPartnersDetails,function(key,value){
        			$.each(value,function(keye,val){
        				if(valee == val)
        					{
        						$.each(value.events,function(keys,vales){
        							
        							 var select_device_Id_items = '<option value="'+vales.event_Status+'">'+vales.event_Status+'</option>';
        		    				 $("#eventslist").append(select_device_Id_items);
        						});
        					}
        			});
        		});
        	});
        }
        function addEvent()
        {
        	
        	var ship_id = $("#shipment_id").val();
        	var ship_num = $("#shipment_number").val();
        	var device_id = $("#connected_device").val();
        	var part_from = $.cookie("BP_ID");
        	var SCM_id = $.cookie("SCM_id");
        	var selectbp = $("#selectvalues").val();
        	var selectevents = $("#eventslist").val();
        	var eventid = $("#eventId").val();
        	var comments = $("#comments").val();
        	var date =  new Date(); 
        	date.setTime(date.getTime() + (330 * 60 * 1000));
        	var isoDate = date.toISOString();
        	var events_is = $('#inboxesvalues tr:last').find('td:eq(1) div').attr("id");
       		var events_length = $('#inboxesvalues>tbody .Event_class').length;
     		var radiovalue=$("input:radio[name=event]:checked").val();
     		var error = document.getElementById("EventError");
     		$("#"+radiovalue).prop("checked", false);
     		var createEventJsonData = {
     			"customerId" : SCM_id,
     			"shipment_Number" : ship_id,
     			"comments" : [comments],
     			"deviceId" : device_id,
     			"estimatedDeliveryDate" : "",
     			"parnterFrom" : selectbp,
     			"eventName" : selectevents,
     			"event_Id" : eventid,
     			"dateAndTime" : isoDate 
     			};
     		alert(JSON.stringify(createEventJsonData));
     		 var url = "http://localhost:8080/SCMXPert/addUpdateNewEvent";
    		 if(eventid == ""){
					var text = "Enter Event Id";
					error.innerHTML = text;
					$("#eventId").focus().css("border","1px solid red");
					return false;
    		 }
    		 if(selectbp == ""){
					var text = "Select BP Id";
					error.innerHTML = text;
					$("#selectvalues").focus().css("border","1px solid red");
					return false;
 		 }
    		 if(selectevents == ""){
					var text = "Select Event List";
					error.innerHTML = text;
					$("#eventslist").focus().css("border","1px solid red");
					return false;
 		 }
  		  $.ajax({
  			 type:"post",
  			 url:url,
  			 headers: { Accept : "application/json",
  						'Content-Type': "application/json" 
  				 		}, 
  			 data: JSON.stringify(createEventJsonData),
  			 success:function(response){
  				// alert(response);
		        	var ship_id = $.cookie("shp_id");
		        	$("#inboxesvalues>tbody").empty();
	        	 	$.getJSON("http://localhost:8080/SCMXPert/getAllTxns/"+ship_id,function(filters){
	        	 		//alert(filters);
	        	 		var event_sNO = []; 
	     				$.each(filters,function(key,value){
	     					event_sNO.push(value.event_SNo);
	     					//partner_From.push(value.partner_From);
	     					//var part_no = value.partner_From;
	     					
	     					/* $.each(value,function(keyssssss,values){
	     						alert(keyssssss);
	     					}); */
	     				});
	     				
	     				
	     				event_sNO.sort(function(a, b){return a-b});
	     				for(i=0;i<event_sNO.length;i++)
	 					{
	     					var event_num = event_sNO[i];
	 		 				$.each(filters,function(kew,val){
	 		 					
	 		 		 					if(event_num == val.event_SNo)
	 		 		 						{
	 		 		 						//alert(kew);
	 		 		 						var status_length = val.event_Name.length;
	 		 			             	/* 	if(status_length > 15)
	 		 			             			{
	 		 			             				var font_size = "10";
	 		 			             			}else{
	 		 			             				var font_size = "12";
	 		 			             			 }*/
	 		 			             		//var val_data = '<div class=""><div><span>Altitude :- </span><span>'+val.altitude+'</span></div><div><span>Battery :- </span><span>'+val.bat+'</span></div><div><span>Distance :- </span><span>'+val.distance+'</span></div><div><span>Latitude :- </span><span>'+val.latitude+'</span></div><div><span>Longitude :- </span><span>'+val.longitude+'</span></div><div><span>Report Type :- </span><span>'+val.report_type+'</span></div><div><span>Sensor Id :- </span><span>'+val.sensor_id+'</span></div><div><span>Speed :- </span><span>'+val.speed+'</span></div><div><span>UTC TIME :- </span><span>'+val.utc+'</span></div><div><span>Internal Temperature :- </span><span>'+val.internal_temperature+'</span></div><div><span>Mode of Transport :- </span><span>'+val.mode_of_Transport+'</span></div><div><span>Message Number :- </span><span>'+val.message_Number+'</span></div><div><span>Temp Measurment :- </span><span>'+val.temp_Measurment+'</span></div><div><span>Shipment Id :- </span><span>'+val.shipment_Id+'</span></div><div><span>Shipment Num :- </span><span>'+val.shipment_Num+'</span></div><div><span>Device Id :- </span><span>'+val.device_Id+'</span></div><div><span>Event Name :- </span><span>'+val.event_Name+'</span></div><div><span>Event S.No :- </span><span>'+val.event_SNo+'</span></div></div>';
	 		 			             		//var val_data = val.altitude;
	 		 			             		var key = kew+1;
	 		 			             		var theDate = new Date( Date.parse(val.event_Exec_Date));
	 		 			               		var date_create = theDate.toLocaleDateString();
	 		 			             		/* if(val.event_Status == "Completed"){
	 		 			         
	 		 			             			var eventsboxes = '<tr><td class="p-1"></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+val.event_Id+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 40px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;"   disabled="disabled"/> </td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_'+val.event_Id+'" value="'+val.partner_From+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;" disabled="disabled" /></td><td class="pl-1"><input type="text"  disabled="disabled" class="form-control mb-1  inputboxesevents" id="event_name_'+val.event_Id+'" value="'+val.event_Name+'" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" disabled="disabled" class="form-control mb-1 inputboxesevents" id="event_date_'+val.event_Id+'" value="'+date_create+'" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;" /></td></tr>';
	 		 			             		}else{
	 		 			             			var eventsboxes = '<tr><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+val.event_Id+'"/></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+val.event_Id+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 40px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;background: #e9ecef;"   disabled="disabled"/> </td><td class="pl-1"><input type="text"   disabled="disabled" class="form-control mb-1 inputboxesevents" id="partner_name_'+val.event_Id+'" value="'+val.partner_From+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text"   disabled="disabled" class="form-control mb-1  inputboxesevents" id="event_name_'+val.event_Id+'" value="'+val.event_Name+'" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents"  disabled="disabled" id="event_date_'+val.event_Id+'" value="'+date_create+'" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;" /></td></tr>';
			 			             		} */
	 		 			               	if(val.event_Status == "Completed"){
	 		 	 		 			         
	 		 			               	var eventsboxes = '<tr id="row_val_'+val.event_Id+'" class="Event_class" style="height:30px;"><td class="p-1"></td><td class="" style="font-size: 10px;padding:1px;"><div class="completedBackground eventNum" id="'+val.event_Id+'">'+val.event_Id+'</div></td><td class="pl-1"><div class="completedBackground eventBp" id="partner_from_'+val.event_Id+'">'+val.partner_From+'</div></td><td class="pl-1"><div class="completedBackground eventName" id="event_name_'+val.event_Id+'">'+val.event_Name+'</div></td><td class="pl-1"><div class="completedBackground eventDate" id="date_'+val.event_Id+'">'+date_create+'</div></td><td class="pl-1"><div class="completedBackground eventStatus" id="event_status_'+val.event_Id+'">'+val.event_Status+'</div></td></tr>';
			 			             		}else{
			 			             			var eventsboxes = '<tr id="row_val_'+val.event_Id+'" class="Event_class" style="height:30px;"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+val.event_Id+'" id="'+val.event_Id+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div class="eventNum" id="'+val.event_Id+'">'+val.event_Id+'</div></td><td class="pl-1"><div class="eventBp" id="partner_from_'+val.event_Id+'">'+val.partner_From+'</div></td><td class="pl-1"><div class="eventName" id="event_name_'+val.event_Id+'">'+val.event_Name+'</div></td><td class="pl-1"><div class="eventDate" id="date_'+val.event_Id+'">'+date_create+'</div></td><td class="pl-1"><div class="eventStatus" id="event_status_'+val.event_Id+'">'+val.event_Status+'</div></td></tr>';
		 			             		}
	 		 			             		
	 		 			             		//alert(eventsboxes);
	 		 				 				$("#inboxesvalues>tbody").append(eventsboxes);
	 		 				 				$("#event_date_"+val.event_Id).datepicker();

	 		 				 				
	 		 		             				//var json_table = 
	 		 		                  			             						
	 		 		 						} 
	 		 		 					//alert(tabletr);
	 		 		 				});
	 						
	 						//reset();
	 		 				$(".body_blur,.AddEventBlock").hide();
	 					}
	     				
	        	 	});
  				 }
  			 });

/*       		var length_events = events_length+1
     		var eventNewId = "E000"+length_events; */
      		
                 		
     		
     		//var evetntable = '<tr id="row_val_'+value+'"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+value+'"/></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+value+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 50px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;"  /> </td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_'+value+'" value="'+partner+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;"/></td><td class="pl-1"><input type="text" class="form-control mb-1  inputboxesevents" id="event_name_'+value+'" value="'+event+'" style="height:25px;font-size: 12px;font-weight:bold;"/></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="event_date__copy'+value+'" value="" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;"/></td></tr>';
     		//var eventsboxes = '<tr id="row_val_'+eventid+'" class="Event_class"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+eventid+'" id="'+eventid+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 40px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;">'+eventid+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 70px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="partner_from_'+eventid+'">'+selectbp+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 160px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="event_name_'+eventid+'" >'+selectevents+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 100px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="date_'+eventid+'" ></div></td><td class="pl-1"><div class="eventStatus" id="event_status_'+eventid+'"></div></td></tr>';
         	 //$("#inboxesvalues>tbody").append(eventsboxes);
         	 //$("#date_"+eventNewId).datepicker();
         /* 	$("#"+eventid).prop("checked", true);
         	var div = document.getElementById(eventid);
         	setTimeout(function() {
         	    div.focus();
         	}, 0);
         	$("body").css("overflow","auto");
        	$(".body_blur,.AddEventBlock").hide();
        	$("#selectvalues,#eventslist,#eventId").val(''); */
        	
        }
      </script>

<jsp:include page="./View/header.jsp" />

<!-- <div class="bodyblur"></div>
<div class="bodyblur1"></div>

<div id="data"></div>
<div class="container">
<button class="float-right btn btn-primary"><a href="Dashboard.jsp" style="color:#fff;font-weight:bold;text-decoration:none;">Back</a></button>
<div style="clear:both"></div>
<h1 class="p-1"></h1>
<h3 class="w-100 text-center">Create New Shipment</h3>
<div style="clear:both"></div>
<Select class="p-1 float-right">
	<option>Select Option</option>
	<option>Preview</option>
	<option>Save As Draft</option>
	<option>Delete Draft</option>
	<option>Save As Templete</option>
</Select>
<div style="clear:both"></div>
<div class="row m-0 p-0">





	<div class="col-sm-12 col-md-6 col-lg-6">
	

		<div class="form-group">
			<label class="font-weight-bold">Internal Shipmet ID</label>
			<input type="text" name="shipment" class="form-control" placeholder="Internal Shipmet ID" id="internalshipment"/>
		</div>
				<div class="form-group">
			<label class="font-weight-bold">Shipment Number </label>
			<input type="text" name="shipment" class="form-control float-left scaninputnumber" style="width:85%;float:left;" placeholder="Shipment Number" id="scaninputnumber"/>
			<button class="btn btn-color float-left" id="scanShipment" style="margin-left:1%;width:14%;" onclick="javascript:scanbtn();">Scan</button>
			<div id="scanboxview" style="width: 300px;height: 300px;position: absolute;margin: 9% 70%;z-index: 2;"><img src="images/L0UX.gif" style="width:100%;height:100%;"/></div>
			
			<div style="clear:both"></div>
		</div>
				<div class="form-group">
			<label class="font-weight-bold">Type of Reference </label>
					<Select class="p-1 form-control" id="selectways">
	<option>Select Option</option>
	<option>Road Ways</option>
	<option>Air Ways</option>
	<option>Sea Ways</option>
	
</Select>
		</div>
				<div class="form-group">
			<label class="font-weight-bold">Shipment Description </label>
			<textarea name="shipment" class="form-control" placeholder="Shipment Description" id="shipdesc" style="height: 37px;"></textarea>
		</div>
				<div class="form-group">
			<label class="font-weight-bold">BP Location </label>
					<Select class="p-1 form-control" id="selectbplocation">
	<option>Select Option</option>
	<option>Malvern</option>
	<option>Princeton</option>
	<option>Newark</option>
	<option>Hornell</option>
</Select>
		</div>
				<div class="form-group">
			<label class="font-weight-bold">Select Route </label>
			<div style="clear:both"></div>
			<input type="text" name="shipment" class="form-control float-left" style="width:80%;float:left;" placeholder="Shipment Number" id="selectlocation"/>
			<button class="btn btn-color float-left" id="scanShipment" style="margin-left:1%;width:19%;font-size:12px;height: 38px;" onclick="javascript:addlocation();">Add Location</button>
			<div id="locationboxview" style="width: 300px;height: 300px;position: absolute;margin: 9% 70%;z-index: 2;;"></div>
		</div>
	
	</div>
	<div class="col-sm-12 col-md-6 col-lg-6" >
			<div class="form-group">
			<label class="font-weight-bold">Select Goods Type </label>

			<Select class="p-1 form-control" id="goodstype">
	<option>Select Option</option>
	<option>Fruits</option>
	<option>vegetables</option>
	<option>Electronics</option>
	<option>pharmacy</option>
</Select>
		</div>
			<div class="form-group">
			<label class="font-weight-bold">Attache Device </label>
					<Select class="p-1 form-control">
	<option>Select Option</option>
	<option>1711210206</option>
	<option>1711210228</option>

</Select>
		</div>
			<div class="form-group">
			<label class="font-weight-bold">Device Level  Reference </label>
			<input type="text" name="shipment" class="form-control" placeholder="Device level  Reference"/>
		</div>
			<div class="form-group">
			<label class="font-weight-bold">Ship Date and Time </label>
			<input type="text" name="shipment" class="form-control datepicker" placeholder="Ship Date and time" />
		</div>
			<div class="form-group">
			<label class="font-weight-bold">Expected Date and Time </label>
			<input type="text" name="shipment" class="form-control datepicker" placeholder="Expected Date and time"/>
		</div>
			<div class="form-group">
			<label class="font-weight-bold">Shipment Status </label>
			<input type="text" name="shipment" class="form-control" placeholder="Shipment Status" value="Preparing"/>
		</div>
	</div>
	
</div></div>
<div class="w-100 text-center buttonsfamilay">
<button class="mr-3 btn" style="background:#868b90;color:#fff;font-weight:bold;" onclick="javascript:checkvalidatedata();">Create Shipment</button>
<button class="mr-3 btn" style="background:#868b90;color:#fff;font-weight:bold;">Cancel</button>
<button class="mr-3 btn" style="background:#868b90;color:#fff;font-weight:bold;">Reset</button>
</div>


<div id="backgroundBlur"></div> -->
<h2 style="text-align:center;margin:0px;"><img src="./images/Capture_scm_half_logo_1.png" style="width:50px;height:50px;"> Update Event Shipment</h2>

<div class="container">
<div class="row">
<div class="col-sm-12 col-md-12 col-lg-12 text-center">
<div class="row text-center">
<div class="col-sm-12 col-md-12 col-lg-12"><a href="Dashboard.jsp"><button class="btn btn-dark float-right" style="height:25px;padding: 1px 15px;font-size: 12px;font-weight: 600;margin-right: 15%;">Back</button></a></div>
<div id="error"></div>
	<div class="col-sm-12 col-md-6 col-lg-6 p-2 m-auto" >
	<div style="border-radius:3px;padding:1%;background:linear-gradient(180deg, rgba(255, 255, 255, 1) 0%, rgba(242, 242, 242, 1) 0%, rgba(228, 228, 228, 1) 100%, rgba(255, 255, 255, 1) 100%);border:1px solid #000;">
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Shipment Id :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Shipment Id" id="shipment_id" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Shipment Number :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Shipment Number" id="shipment_number" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Type of Reference :</span><span class="float-left" style="width:45%;"><select class="form-control"  style="height:25px;font-size: 11px;font-weight:bold;padding-top:2px;" id="typeOfReferences" disabled="disabled"><option>Select Type Reference</option></select></span></div>
		<div style="width: 100%;height: 60px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Shipment Description :</span><span class="float-left" style="width:45%;"><textarea class="form-control" id="comments" placeholder="Enter Your Description"  style="height:55px;font-size: 12px;font-weight:bold;padding-top:1px;" disabled="disabled"></textarea></span></div>
		<div style="width: 100%;height: 30px;font-size:12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Connected Device :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Connected Device" id="connected_device" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		</div>
	</div>
</div></div>
<div class="col-sm-12 col-md-12 col-lg-12">
	<div class="col-sm-12 col-md-6 col-lg-6 p-0 text-center m-auto">
		<div class="" style="padding:1%;border-radius:3px;width:100%;height:225px;border:1px solid #000;">
		<div style="height:185px;width:100%;overflow-y:auto;">
		
		<table class="" id="inboxesvalues">
				<thead>
					<tr>
						<th></th>
						<th>Event Id</th>
						<th>Partner</th>
						<th>Event</th>
						<th>Date</th>
						<th>Event Status</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		
		</div>
			<!-- <button id="convert-table">Convert</button> -->
			<div class="w-100"><span class="" style="background:#ccd0d4;width:100%;height:27px;float:right;"><img src="./images/below.png" id="btnSubmit" style="width:23px;margin-left: 7%;margin-top: 3px;"><img src="./images/plus-filled.png" style="width:21px;margin-right:2%;float:right;margin-top: 3px;" onclick="javascript:dialogboxAddEvent();" class="AddButtonIcon"></span><span style="clear:both;"></span></div>
			
		</div>
			
		
	</div></div>
	<div class="col-sm-12 col-md-12 col-lg-12 mt-3" >
	<div class="col-sm-12 col-md-6 col-lg-6 text-center m-auto">
	<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Event Id :</span><span class="float-left" style="width:35%;"><input type="text" class="form-control" placeholder="Event Id" style="height:25px;font-size: 12px;font-weight:bold;" id="event_id_val"/></span></div>
	<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Event :</span><span class="float-left" style="width:35%;"><input type="text" placeholder="Event Type" id="event_type_val" class="form-control" style="height:25px;font-size: 12px;font-weight:bold;"/></span></div>
	<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Partner :</span><span class="float-left" style="width:35%;"><select id="event_partner_from" class="form-control" style="height:25px;font-size: 12px;font-weight:bold;padding-top: 3px;"><option value=''>Select Partner</option></select></span></div>
	<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Event Reference :</span><span class="float-left" style="width:35%;"><input type="text" class="form-control" id="event_reference" placeholder="Event Reference" style="height:25px;font-size: 12px;font-weight:bold;"/></span></div>
	<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Type of Reference :</span><span class="float-left" style="width:35%;"><select class="form-control"  style="height:25px;font-size: 11px;font-weight:bold;padding-top:2px;" id="typeOfReferences1"><option value=''>Select Type Reference</option></select></span></div>
	<div style="width: 100%;height: 60px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Event Description :</span><span class="float-left" style="width:35%;"><textarea class="form-control" placeholder="Enter Description" id="event_description" style="height:55px;font-size: 12px;font-weight:bold;padding-top:2px;"></textarea></span></div>
	</div></div>
	<div class="col-sm-12 col-md-12 col-lg-12 text-center m-2">
	<div>
			<!-- <button class="btn btn-color m-1">Select Draft</button> -->
	<!-- 		<button class="btn btn-color m-1">Save as Draft</button>
			<button class="btn btn-color m-1">Add Tag Info</button> -->
		
			<button class="bg-color margin-rl1 btn-head" id="delete_event">Delete Event</button></a>
			<button class="bg-color margin-rl1 btn-head" id="reset" onclick="javascript:reset();">Reset</button>
			<button class="bg-color margin-rl1 btn-head" id="updateEvent">Update Event</button>
			
		</div>
		<br>
		<div class="alert alert-success" id="successalert"> Event Update <strong>Successfully!</strong> <a href="Dashboard.jsp" class="alert-link text-primary" style="text-decoration-line: underline;text-decoration-style: solid;">Move to Dashboard</a>.</div>
		
	</div>
	
</div></div>

<footer></footer>
      <div class="body_blur"></div>
      <div class="AddEventBlock">
       	<h3 style="text-align:center;width:94%;float:left;padding-top:2%;">Add Partner Event</h3><span class="close" style="width: 2.7%;height: 25px;float: left;padding: 1% 3% 1% 0%;">X</span><span style="clear:both;"></span>
      	<div id="EventError"></div>
      	<input type="text" name="eventId" id="eventId"  placeholder="Enter Event Id Like E0011" style="margin-top: 1rem; text-align: center;width: 60%;padding-top: 2%;margin: 0% 20%;height: 25px; padding-top: 2px; font-size: 12px; padding-bottom: 2px;font-weight: 600; border-radius: 4px; border: 1px solid #ced4da; margin-bottom: 4px;" />
      	<select class="form-control" id="selectvalues" style="margin-top:1rem;text-align: center;width: 60%;padding-top: 2%;margin: auto;height: 25px;padding-top: 2px;font-size: 12px;padding-bottom: 2px;font-weight: 600;" onchange="javascript:selectBpName(this.value);"><option value="">Select Partner</option></select>
      	<div style="width:100%;height:4px;"></div>
      	<select class="form-control" id="eventslist" style="margin-top:1rem;text-align: center;width: 60%;padding-top: 2%;margin: auto;height: 25px;padding-top: 2px;font-size: 12px;padding-bottom: 2px;font-weight: 600;"><option value="">Select Event</option></select>
      	<button id="CancelEvent" class="btn-color" style="height:25px;font-size:12px;font-weight:600;margin: 2% 20%;border-radius:5px;border:1px solid #17a2b8;" >Cancel Event</button>
      	<button id="AddEvent" class="btn-color" style="height:25px;font-size:12px;font-weight:600;margin: 2% 0%;border-radius:5px;border:1px solid #17a2b8;" onclick="javascript:addEvent();">Add Event</button>
      	
      	
      </div>

</body>
</html>
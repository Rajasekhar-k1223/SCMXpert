<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SCMXpert/CreateShipment</title>
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


<!-- <link rel="stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"/>
<link rel="stylesheet" href = "https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
<script rel="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script rel="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script rel="javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src=" https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script> -->
<script src="./js/jquery.cookie.js"></script>
<script src="./js/CreateShipment.js"></script>
<script src="./js/All.js"></script>
<script src="./js/jquery.tabletojson.js"></script>
  
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
.showviewdata{display:none;width: 57%;background: #fff;border-radius: 5px;z-index: 9999999999;position: absolute;height: 50px;top: 74px;bottom: 10px;right: 23%;}
.view_body_boder{width:95%;height:80%;border:1px solid #000;margin:auto;box-shadow:0px 0px 5px #000;}
.view_body_header{width:100%;height:30px;padding-top:1%;padding-right:3%;}
.nodes{width:55px;font-size:11px;font-weight:bold;border:1px solid #000;float:left;text-align:center;margin:1px;float:right;border-radius:3px 3px 0px 0px;}
footer{width:100%;height:50px;background-color:#000;margin-top:5%;}
#scanboxview{display:none;}
.bodyblur{width:100%;height:100%;background:#000000e0;position:absolute;z-index:1;display:none;}
.bodyblur1{width:100%;height:100%;background:#000000e0;position:absolute;z-index:1;display:none;}
#locationboxview{display:none;background:#fff;border:1px solid #000;top:1px;}
.body_blur{width:100%;height:100%;overflow:hidden;position:fixed;top:0px;z-index:1;background:#00000069;display:none;}
.AddEventBlock{width:30%;height:200px;background:#fff;border-radius:5px;top:17rem;position:fixed;z-index:2;margin:0% 35%;display:none;}
.AddButtonIcon{cursor:pointer;}
/* #draftTable_length{float:left;} */
/* #draftTable_wrapper{overflow-x:auto;} */
.E0001{background:#ccd0d4;height:25px;font-size: 12px;}
.inputboxesevents{height:25px;font-size: 12px;}
.success_dialog{display:none;}
#backgroundBlur{background: #000000;opacity: .7;display: none;position: fixed;top: 0;left: 0;width: 100%;height: 100%;z-index: 999999999;}
#draftTable>thead>tr>th{padding:1px;text-align:center;}
#draftTable>tbody>tr>td{padding:1px;text-align:center;}
#draftTable_length{font-size: 12px;margin-top: 9px;display:none;}
#draftTable_filter{font-size: 12px;margin-top: 9px;display:none;}
#draftTable_info{font-size: 12px;}
#draftTable_paginate{font-size:9px;}
#draftTable>thead>tr>.sorting, .sorting_asc, .sorting_desc {
    background : none;
}
table.dataTable thead .sorting:before, table.dataTable thead .sorting_asc:before, table.dataTable thead .sorting_desc:before, table.dataTable thead .sorting_asc_disabled:before, table.dataTable thead .sorting_desc_disabled:before{content:none;}
table.dataTable thead .sorting:after, table.dataTable thead .sorting_asc:after, table.dataTable thead .sorting_desc:after, table.dataTable thead .sorting_asc_disabled:after, table.dataTable thead .sorting_desc_disabled:after{content:none;}
div::-webkit-scrollbar {
    width: 12px;
}
#inboxesvalues>thead>tr>th{display:none;}
#inboxesvalues{margin-top: 22px;}
#draftTable_info{display:none;}
#draftTable_paginate{display:none;}
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
#tableHeader{position: absolute;background: #fff;padding: 19px;width: 94%;border-bottom: 1px solid #000;display:none;}
</style>
</head>
<body>
  <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet"/> 
<!--   <script src=" https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
 <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script> -->
<!--   <link href = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"/>
 <link href = "https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/> -->

      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      <script src="./js/CommonFunction.js"></script>
          <!-- Javascript -->
      <script type="text/javascript">
        $(document).ready(function(){
        	 var myDate=new Date();
        	    myDate.setDate(myDate.getDate()+1);
        	    // format a date
        	    var dt = myDate.getDate() + '/' + ("" + (myDate.getMonth() + 1)).slice(-2) + '/' + myDate.getFullYear();
        	$("#expected_date").val(dt);
        	$("#typeOfReferences").on("change",function(){
        		var textval = $(this).val();
        		if(textval != '')
        			{
        				$("#error").empty();
        				$(this).focus().css("border","1px solid #ced4da");
        			}
        	});
        	$("#routes").on("change",function(){
        		var textval = $(this).val();
        		if(textval != '')
        			{
        				$("#error").empty();
        				$(this).focus().css("border","1px solid #ced4da");
        			}
        	});
        	$("#goods").on("change",function(){
        		var textval = $(this).val();
        		if(textval != '')
        			{
        				$("#error").empty();
        				$(this).focus().css("border","1px solid #ced4da");
        			}
        	});
        	$("#devices").on("change",function(){
        		var textval = $(this).val();
        		if(textval != '')
        			{
        				$("#error").empty();
        				$(this).focus().css("border","1px solid #ced4da");
        			}
        	});
        	$("#expected_date").on("change",function(){
        		var textval = $(this).val();
        		if(textval != '')
        			{
        				$("#error").empty();
        				$(this).css("border","1px solid #ced4da");
        			}
        	});
        	$("#shipment_number").on("keypress",function(){
        		$("#error").empty();
        		$(this).focus().css("border","1px solid #ced4da");
        	});
/*            	$("#expected_date").on("keypress",function(){
        		$("#error").empty();
        		$(this).focus().css("border","1px solid #ced4da");
        	}); */
        	
        	
        	
        	
        	$("input[type='radio']"). click(function(){
        		var radioValue = $("input[name='selectdraftselect']:checked"). val();
        		alert(radioValue);
        			
        	});
        	
        	$("#copyButtonId").on("click",function(){
        		var value=$("input:radio[name=event]:checked").val();
        		var partner = $("#partner_name_"+value).val();
            	var event = $("#event_name_"+value).val();
            	var datee = $("#event_date_"+value).val();
        		
        	});
        	$("#Cust_Id").val($.cookie("SCM_id"));
        	$("#bp_name").val($.cookie("BP_ID"));
       /*  	$("#routes").on("change",function(){
        		var selectval = $(this).val();
        		//alert(selectval);
        		getbp_id(selectval);
        	}); */
        	
        
        	 /*	SelectRoute(selectroutevalues); */
        	setInterval(function(){ function formatAMPM(date) {
          		  var hours = date.getHours();
          		  var minutes = date.getMinutes();
          		  var ampm = hours >= 12 ? 'pm' : 'am';
          		  hours = hours % 12;
          		  hours = hours ? hours : 12; // the hour '0' should be '12'
          		  minutes = minutes < 10 ? '0'+minutes : minutes;
          		  var strTime = hours + ':' + minutes + ' ' + ampm;
          		  return strTime;
          		} 
        	var months    = ['January','February','March','April','May','June','July','August','September','October','November','December'];
        	var now       = new Date();
        	var thisMonth = months[now.getMonth()];
        	var time = formatAMPM(new Date);
        	var today = new Date();
          	var date = thisMonth+'-'+today.getDate()+'-'+today.getFullYear();
          	//var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
          	//var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
          	var dateTime = date+' '+time;
          	$("#sysdateandtime").val(dateTime);
          	$("#date_E0010").text(date);
        	}, 1000);
          	$('#draftTable').DataTable();
        	
        	 $( "#expected_date" ).datepicker();
         	var part_from = $.cookie("BP_ID");
        	var SCM_id = $.cookie("SCM_id");
        	var ship_id = $.cookie("shp_id");
        	//getbp_id(part_from);
        	
        		$.getJSON("http://localhost:8080/SCMXPert/getAllDrafts", function(data){
        			$(".dataTables_empty").hide();
					$.each(data,function(key,val){
						 var adddraft = '<tr class="p-0 savedraft" style=" font-size:12px;font-weight:bold;" id="savedraft_'+val.internal_Shipment_Id+'"><td>'+val.shipment_Number+'</td><td>'+val.internal_Shipment_Id+'</td><td>'+val.routeFrom+'</td><td>'+val.routeTo+'</td><td>'+val.goodsType+'</td><td>'+val.inco+'</td><td><span><input type="radio" val="'+val.internal_Shipment_Id+'" onclick="javascript:selectDraft(\''+val.internal_Shipment_Id+'\')" name="selectdraftselect" style="width:12px;position: relative;top:4px;margin-right:10px;"/></span><span><img src="./images/delete.png" onclick="javascript:deleteDraft(\''+val.internal_Shipment_Id+'\');" alt="Delete Draft" style="width:12px;cursor: pointer;"/></span></td></tr>';
							$("#draftTable tbody").append(adddraft);
					});
        			/* var adddraft = '<tr class="p-0" style=" font-size:12px;font-weight:bold;"><td>'+internalshipment+'</td><td>'+shipment_number+'</td><td>'+route_from+'</td><td>'+route_to+'</td><td>'+goods+'</td><td>'+route_inco+'</td><td><span><input type="checkbox" style="width:15px;height:15px;"/></span><span><img src="./images/delete.png" onclick="javascript:deleteDraft(\''+internalshipment+'\');" alt="Delete Draft"/></span></td></tr>';
					$("#draftTable tbody").append(adddraft); */
        			
        		});

        	$.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+SCM_id, function(data) { 		
	/* 	 		$.each(data.bussinesPartnersDetails,function(key,val){
	 			//alert(val.events);
	 			var valuesbp = $("#bp_name").val();
	 			if(valuesbp == val.bp_Id)
	 				{// alert(val.events.length); 
	 					$("#company_name").val(val.company_Name).css("font-weight","bold");
	 					$("#inboxesvalues>tbody").empty();
	 				$.each(val.events,function(keys,values){
	 					var status_length = values.event_Status.length;
	 						var theDate = new Date( Date.parse(values.event_Exec_Date));
	 		             	var date_create = theDate.toLocaleDateString();
		 				var eventsboxes = '<tr><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+values.event_Id+'"/></td><td class="p-1" style="font-size: 10px;">'+values.event_Id+'</td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_'+values.event_Id+'" value="'+part_from+'" style="height:25px;font-size: 12px;font-weight:bold;"  disabled="disabled"/></td><td class="pl-1"><input type="text" class="form-control mb-1  inputboxesevents" id="event_name_'+values.event_Id+'" value="'+values.event_Status+'" style="height:25px;font-size: 12px;font-weight:bold;"  disabled="disabled"/></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="event_date_'+values.event_Id+'" value="Select Date" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;"  disabled="disabled"/></td></tr>';
		 				$("#inboxesvalues>tbody").append(eventsboxes);
		 				$('#event_date_'+values.event_Id).datepicker();
		 				$(".E0001").attr('disabled', 'disabled').css({"background":"#ccd0d4"});
		 				
		 			});
	 				}
	 			
	 		}); */
		 		
		 		var routeslist = [];
	 		$("#internalshipment").val(data.internalShipmentId);
		 		$.each(data.business_Partner_Id,function(keys,values){
    				//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
    				 var select_device_Id_items = '<option value="'+values+'">'+values+'</option>';
    				 routeslist.push(values);
    				 $("#event_partner_from,#selectvalues").append(select_device_Id_items);
    				 //device_Id_select.push(select_device_Id_items); 
    			});  
	 			
		 		//alert(data.bussinesPartnersDetails);
		 /* 		$.each(data.bussinesPartnersDetails,function(key,val){
		 			//alert(val.events);
		 			var valuesbp = "BP0002";
		 			if(valuesbp == val.bp_Id)
		 				{alert(val.events.length); 
		 				$.each(val.events,function(keys,values){
			 				var eventsboxes = '<tr><td class="p-1"><input type="radio" name="event" style="width:14px;"/></td><td class="p-1" style="font-size: 10px;">'+values.event_Id+'</td><td class="pl-1"><input type="text" class="form-control mb-1 '+values.event_Id+' inputboxesevents" value="'+valuesbp+'"/></td><td class="pl-1"><input type="text" class="form-control mb-1 '+values.event_Id+' inputboxesevents" value="'+values.event_Status+'"/></td><td class="pl-1"><input type="text" class="form-control mb-1 '+values.event_Id+' inputboxesevents" value=""/></td></tr>';
			 				$("#inboxesvalues>tbody").append(eventsboxes);
			 			});
		 				}
		 			
		 		}); */
		 		
		 		
        		//$.each(data,function(key,value){
        			//alert(value);
        			//alert(value.bussinesPartnersDetails);
        /********    bussinesPartnersDetails Items   *************/			
        			//var goods_select = [];
        		 	/* $.each(data.bussinesPartnersDetails,function(keys,values){
        		 		$("#company_name").val(values.company_Name).css("font-weight","bold");
        				 */
        			/* 	var select_goods_items = '<option value="'+values.goods_Item+'">'+values.goods_Item+'</option>';
        				$("#goods").append(select_goods_items);  */
        				//goods_select.push(select_goods_items);
        			/* }); */ 
       /********    Goods Items   *************/			
        			//var goods_select = [];
        			$.each(data.goods,function(keys,values){

        				var select_goods_items = '<option value="'+values.goods_Id+','+values.goods_Item+'">'+values.goods_Item+'</option>';
        				$("#goods").append(select_goods_items);
        				//goods_select.push(select_goods_items);
        			});
        /********    Route Items   *************/			
        			//var route_select = [];
	       			$.each(data.route,function(keys,values){
        				//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
        				 var select_route_items = '<option value="'+values.businessId+','+values.route_Id+'">'+values.from+','+values.to+','+values.primary_Mode_Of_Transport+','+values.inco_Term+'</option>';
        				 $("#routes").append(select_route_items);
        				 //route_select.push(select_route_items); 
        			});        			
       /********    Reference Items   *************/			
        			//var typeOfReferences_select = [];
        			$.each(data.typeOfReferences,function(keys,values){
        				//alert(values);
        				//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
        				 var select_typeOfReferences_items = '<option value="'+values+'">'+values+'</option>';
        				 $("#typeOfReferences").append(select_typeOfReferences_items);
        				 //typeOfReferences_select.push(select_typeOfReferences_items); 
        			});        			
      /********    Device Items   *************/			
        			//var device_Id_select = [];
        			$.each(data.device_Id,function(keys,values){
        				//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
        				 var select_device_Id_items = '<option value="'+values+'">'+values+'</option>';
        				 $("#devices").append(select_device_Id_items);
        				 //device_Id_select.push(select_device_Id_items); 
        			});  
        			
        			
        			//$("#goods").html("<option value=''>Select Goods</option>"+goods_select);
        			//$("#routes").html("<option value=''>Select Route</option>"+route_select);
        			//$("#typeOfReferences").html("<option value=''>Select Reference</option>"+typeOfReferences_select);
        			//$("#devices").html("<option value=''>Select Device</option>"+device_Id_select);
        		//});
        		/*   var items = [];
        		  $.each( data, function( key, val ) {
        		    items.push( "<li id='" + key + "'>" + val + "</li>" );
        		  }); */
        	});
        	
       	    	//var randnumber = getRandom(10);
        	    	//$("#internalshipment").val(randnumber);
        	    	$('.datepicker').datepicker();

        	    	$(".bodyblur,.bodyblur1").on("click",function(){
        	    		 $("#scanboxview,#locationboxview").hide();
         	    	    $(this).hide();
        	    	});
        	    	setTimeout(function(){
//        	    		$("header").css({"position":"unset","z-index":"0"});
        	    	    $("#scanboxview").hide();
        	    	    $(".bodyblur").hide();
        	    	}, 5000);
        	    	$("#scaninputnumber").on("click",function(){
        	    		$(this).css({"border":"1px solid #00000030","color":"#000"});
        	    	});
        	    	
        	    	
        	});
        

        
        function copy() {
        	 //var textarea = document.getElementById("inboxesvalues");
        	 var value=$("input:radio[name=event]:checked").val();
        	 var partner = $("#partner_name_"+value).val();
         	var event = $("#event_name_"+value).val();
         	var datee = $("#date_"+value).val();
         	if(value == undefined){
         	alert("Select Atleast one Event");
         	}else{
         		var events_is = $('#inboxesvalues tr:last').find('td:eq(1) div').attr("id");
         		var events_length = $('#inboxesvalues>tbody .Event_class').length;
         		var radiovalue=$("input:radio[name=event]:checked").val();
         		$("#"+radiovalue).prop("checked", false);
          		var length_events = events_length+1
         		var eventNewId = "E000"+length_events;
          		
                     		
         		
         		//var evetntable = '<tr id="row_val_'+value+'"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+value+'"/></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+value+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 50px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;"  /> </td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_'+value+'" value="'+partner+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;"/></td><td class="pl-1"><input type="text" class="form-control mb-1  inputboxesevents" id="event_name_'+value+'" value="'+event+'" style="height:25px;font-size: 12px;font-weight:bold;"/></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="event_date__copy'+value+'" value="" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;"/></td></tr>';
         		var eventsboxes = '<tr id="row_val_'+eventNewId+'" class="Event_class"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+eventNewId+'" id="'+eventNewId+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 50px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;">'+eventNewId+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 90px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="partner_from_'+eventNewId+'" contenteditable="true"></div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 190px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="event_name_'+eventNewId+'" contenteditable="true"></div></td><td class="pl-1"><input type="text" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 135px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="date_'+eventNewId+'"/><img src="./images/save-icon.png" style="width:30px;height:23px;" onclick="javascript:saveCopyData(\''+eventNewId+'\');" id="saveimage"></td></tr>';
             	 $("#inboxesvalues>tbody").append(eventsboxes);
             	 $("#date_"+eventNewId).datepicker();
             	$("#"+eventNewId).prop("checked", true);
             	var div = document.getElementById(eventNewId);
             	setTimeout(function() {
             	    div.focus();
             	}, 0);
         	}
        	  /* textarea.select();
        	  document.execCommand("copy"); */
        	}
        function saveCopyData(id)
        {
        	alert(id);
        	var partner_from = $("#partner_from_"+id).text();
        	var event_name = $("#event_name_"+id).text();
        	var date = $("#date_"+id).text();
        	var json_value = {
        		"event_Id" : id,
        		"bpId" : partner_from,
        		"eventName" : event_name,
        		"dateTime" : date
        		};
        	
        	var url = "http://localhost:8080/SCMXPert/addCopyEvent";
        	$.ajax({
		       	 type:"post",
				 url:url,
				 headers: { Accept : "application/json",
							'Content-Type': "application/json" 
					 		}, 
				 data: JSON.stringify(json_value),
        	    success: function(data) {
        	    	$("#saveimage").hide();
        	    	$("#date_"+id).css("width","160px");
        	    }
			});
        }

        function copyToClipboard(text) {
        	var text_val = text;
        	text_val.select();
            document.execCommand("copy");
            //$text.remove();
        }

        function selectDraft(id)
        {
        		$.getJSON("http://localhost:8080/SCMXPert/getSavedDraft/"+id, function( data ) { 
        			//alert(data.internal_Shipment_Id);
      /*   		 	var internalshipment = $('#createShipment').find('input[name="internalshipment"]').val(data.shipment_Number);
                	var cust_name = $('#createShipment').find('input[name="cust_name"]').val(data.customerId);
                	var bp_name = $('#createShipment').find('input[name="bp_name"]').val(data.parnterFrom); */
                	var route_from = $('#createShipment').find('input[name="route_from"]').val(data.routeFrom);
                	var route_mode = $('#createShipment').find('input[name="route_mode"]').val(data.mode);
                	var route_to = $('#createShipment').find('input[name="route_to"]').val(data.routeTo);
                	var route_inco = $('#createShipment').find('input[name="route_inco"]').val(data.inco);
                	var typeOfReferences = $('#typeOfReferences').val(data.typeOfReference);
                	var shipment_number = $('#createShipment').find('input[name="shipment_number"]').val(data.internal_Shipment_Id);
                	var comments = $('#createShipment').find('textarea[name="comments"]').val(data.comments);
                	var goods = $('#goods').val(data.goodsType);
                   	var routesval = data.routeFrom+','+data.routeTo+','+data.mode+','+data.inco;
                   	var routes = $('#routes').val(data.routeId);
                   	SelectRoute(data.routeId);                	
                	var devices = $('#devices').val(data.deviceId);
                	var Exp_date = $('#createShipment').find('input[name="Exp_date"]').val(data.estimatedDeliveryDate);
        /*         	var text = $('#createShipment').find('input[name="internalshipment"]').val();
                	var text = $('#createShipment').find('input[name="internalshipment"]').val(); */
                	var value=$("input:radio[name=event]:checked").css("display","none");
                	$("#inboxesvalues>thead").hide();
                	$("#inboxesvalues>tbody").empty();
                	$("#tableheadercols").show();
                	//alert("#"+data.selectEventId);
            /* 		var partner = $("#partner_name_"+value).val();
                	var event = $("#event_name_"+value).val();
                	var datee = $("#event_date_"+value).val(); */
                	$("#row_val_"+data.selectEventId).attr('checked', true);
        		});
        		$(".savedraft").css({"background":"#fff","color":"#000","font-weight":"500"});
        		$('.savedraft>td>span>img').attr("src","./images/delete.png");
        		$('#savedraft_'+id).css({"background":"#10707f","color":"#fff","font-weight":"bold"});
        		$('#savedraft_'+id+'>td>span>img').attr("src","./images/delete1.png");
        }

        
        function getRandom(length) {

        	return Math.floor(Math.pow(10, length-1) + Math.random() * 9 * Math.pow(10, length-1));

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
        function SelectRoute(val)
        {
        	
        	 var res = val.split(",");
        	 getbp_id(res[0]);
        	  var x = res[1];
        	  var SCM_id = $("#Cust_Id").val();
        	  $("#inboxesvalues>thead").show();
         	  $.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+SCM_id, function( data ) {
          		
          			$.each(data.route,function(keys,values){
        				//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
        				/*  var select_route_items = '<option value="'+values.route_Id+'">'+values.from+','+values.to+','+values.primary_Mode_Of_Transport+'</option>';
        				 $("#routes").append(select_route_items); */
        				 //route_select.push(select_route_items); 
        				 //alert(values.route_Id);
        				 if(x == values.route_Id)
        					 {
        					 	$("#route_from").val(values.from).css("font-weight","bold");
        					 	$("#route_to").val(values.to).css("font-weight","bold");
        					 	$("#route_mode").val(values.primary_Mode_Of_Transport).css("font-weight","bold");
        					 	$("#route_inco").val(values.inco_Term).css("font-weight","bold");
        					 }
        			
          			});
          		});
         	  $("#inboxesvalues>thead>tr>th").show();
         	  $("#tableheadercols").hide();
         	 var sysdateime = $("#sysdateandtime").val();
         	$("#event_date_E0001").val(sysdateime);
        }
        
        function SelectGoods(val)
        {
        	
        	 var res = val.split(",");
        	 //getbp_id(res[0]);
        	  var x = res[0];
        	  var SCM_id = $("#Cust_Id").val();
        	 // $("#inboxesvalues>thead").show();
         	  $.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+SCM_id, function( data ) {
          		
          			$.each(data.goods,function(keys,values){
        				//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
        				/*  var select_route_items = '<option value="'+values.route_Id+'">'+values.from+','+values.to+','+values.primary_Mode_Of_Transport+'</option>';
        				 $("#routes").append(select_route_items); */
        				 //route_select.push(select_route_items); 
        				 //alert(values.route_Id);
        				 if(x == values.goods_Id)
        					 {
        					 	$("#temp").val(values.temperture_From+' - '+values.temperture_To+' '+values.tempUnits).css("font-weight","bold");
        					 	$("#humdity").val(values.humidity_From+' - '+values.humidity_To+' '+values.humiUnits).css("font-weight","bold");
        					 }
        			
          			});
          		});
/*          	  $("#inboxesvalues>thead>tr>th").show();
         	  $("#tableheadercols").hide();
         	 var sysdateime = $("#sysdateandtime").val();
         	$("#event_date_E0001").val(sysdateime); */
        }
        function selectbp_id(valuesbp)
        {
        	//alert(valuesbp);
         $.getJSON( "http://localhost:8080/SCMXPert/getDDData/SCM0001", function( data ) {
        	 //alert(data);
         	$.each(data.bussinesPartnersDetails,function(key,val){
	 			//alert(val.events);
	 			
	 			if(valuesbp == val.bp_Id)
	 				{// alert(val.events.length); 
	 					$("#company_name").val(val.company_Name).css("font-weight","bold");
	 					$("#inboxesvalues>tbody").empty();
	 				$.each(val.events,function(keys,values){
		 				var eventsboxes = '<tr><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+val.event_Id+'"/></td><td class="p-1" style="font-size: 10px;"></td><td class="p-1" style="font-size: 10px;"><input type="text" value="'+val.event_Id+'" style="height:25px;font-size: 12px;font-weight:bold;" /> </td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_'+val.event_Id+'" value="'+part_from+'" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" class="form-control mb-1  inputboxesevents" id="event_name_'+val.event_Id+'" value="'+val.event_Name+'" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="event_date_'+val.event_Id+'" value="'+date_create+'" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;" /></td></tr>';
		 				$("#inboxesvalues>tbody").append(eventsboxes);
		 				$('#datepicker-'+values.event_Id).datepicker();
		 				$(".E0001").attr('disabled', 'disabled').css({"background":"#ccd0d4"});
		 				
		 			});
	 				}
	 			
	 		}); 
         });
         var events_is = $('#inboxesvalues tr:first').find('td:eq(1) div').attr("id");
     	$("#"+events_is).prop("checked", true)
        	
       
        }
        function saveasDraft()
        {
        	$(".dataTables_empty").hide();
        	var internalshipment = $('#createShipment').find('input[name="internalshipment"]').val();
        	var cust_name = $('#createShipment').find('input[name="Cust_Id"]').val();
        	var bp_name = $('#createShipment').find('input[name="bp_name"]').val();
        	var route = $('#routes').val();
        	var route_from = $('#createShipment').find('input[name="route_from"]').val();
        	var route_mode = $('#createShipment').find('input[name="route_mode"]').val();
        	var route_to = $('#createShipment').find('input[name="route_to"]').val();
        	var route_inco = $('#createShipment').find('input[name="route_inco"]').val();
        	var typeOfReferences = $('#typeOfReferences').val();
        	var shipment_number = $('#createShipment').find('input[name="shipment_number"]').val();
        	var comments = $('#createShipment').find('textarea[name="comments"]').val();
        	var goods = $('#goods').val();
        	var devices = $('#devices').val();
        	var routes = $('#routes').val();
        	var Exp_date = $('#createShipment').find('input[name="Exp_date"]').val();
/*         	var text = $('#createShipment').find('input[name="internalshipment"]').val();
        	var text = $('#createShipment').find('input[name="internalshipment"]').val(); */
        	var value=$("input:radio[name=event]:checked").val();
    		var partner = $("#partner_name_"+value).val();
        	var event = $("#event_name_"+value).val();
        	var datee = $("#event_date_"+value).val();
        	var error = document.getElementById("error");
        	
        	
        	var routevalues =  route_from+','+route_to+','+route_mode+','+route_inco;
        	if(shipment_number == ""){
				var text = "Enter Shipment Number";
				error.innerHTML = text;
				$("#shipment_number").focus().css("border","1px solid red");
				return false;
		 	}
        	if(typeOfReferences == ""){
				var text = "Select Reference";
				error.innerHTML = text;
				$("#typeOfReferences").focus().css("border","1px solid red");
				return false;
		 	}
        	if(routes == ""){
				var text = "Select Route";
				error.innerHTML = text;
				$("#routes").focus().css("border","1px solid red");
				return false;
		 	}
        	if(goods == ""){
				var text = "Select Goods";
				error.innerHTML = text;
				$("#goods").focus().css("border","1px solid red");
				return false;
		 	}
        	if(devices == ""){
				var text = "Select Device";
				error.innerHTML = text;
				$("#devices").focus().css("border","1px solid red");
				return false;
		 	}
        	if(Exp_date == ""){
				var text = "Enter Delivery Date";
				error.innerHTML = text;
				$("#expected_date").focus().css("border","1px solid red");
				return false;
		 	}
        	
        	
        	
        	var json_value = {
        			"internal_Shipment_Id" :shipment_number,
        			"customerId" : cust_name,
        			"shipment_Number" : internalshipment,
        			"typeOfReference" :typeOfReferences,
        			"comments" : comments,
        			"routeId" : route,
        			"routeFrom" : route_from,
        			"routeTo" : route_to,
        			"goodsId" : "SCM0001_G0001",
        			"goodsType" : goods,
        			"deviceId" : devices,
        			"estimatedDeliveryDate" : Exp_date,
        			"parnterFrom" : partner,
        			"partnerTo" : "",
        			"inco": route_inco,
        			"eventName" : event,
        			"routeInfo" : routevalues,
        			"mode":route_mode,
        			"selectEventId" : value,
        			"dateAndTime" : "2019-05-02T13:21:55.000Z"
        			
        		};
       // 	alert(JSON.stringify(json_value));
      // var rowCount = $('#draftTable >tbody >tr>td').length;
      // alert(rowCount)
        var url = "http://localhost:8080/SCMXPert/saveDraft";
        	$.ajax({
		       	 type:"post",
				 url:url,
				 headers: { Accept : "application/json",
							'Content-Type': "application/json" 
					 		}, 
				 data: JSON.stringify(json_value),
        	    success: function(data) {
        	    	
        	    	
        	    	
        	    	
					var adddraft = '<tr class="p-0 savedraft" style=" font-size:12px;font-weight:bold;" id="savedraft_'+internalshipment+'"><td>'+internalshipment+'</td><td>'+shipment_number+'</td><td>'+route_from+'</td><td>'+route_to+'</td><td>'+goods+'</td><td>'+route_inco+'</td><td><span><input type="radio" val="'+internalshipment+'" onclick="javascript:selectDraft(\''+internalshipment+'\')" name="selectdraftselect" style="width:12px;position: relative;top:4px;margin-right:10px;"/></span><span><img src="./images/delete.png" onclick="javascript:deleteDraft(\''+internalshipment+'\');" alt="Delete Draft" style="width:12px;cursor: pointer;"/></span></td></tr>';
					$("#draftTable tbody").prepend(adddraft);
					//var rowCount = $('#draftTable >tbody >tr').length;
					/* if(rowCount == 0)
						{
						$("#draftTable>tbody").empty();
						$("#draftTable>tbody").append(adddraft);
						}else{
							$("#draftTable>tbody").append(adddraft);
						} 
					*/ 
        	    },
        	});  
        	
        	
        	reset();
        	
        }
        
        function createShipment()
        {
        	var internalshipment = $('#createShipment').find('input[name="internalshipment"]').val();
        	var cust_name = $('#createShipment').find('input[name="Cust_Id"]').val();
        	var bp_name = $('#createShipment').find('input[name="bp_name"]').val();
        	var route_from = $('#createShipment').find('input[name="route_from"]').val();
        	var route_mode = $('#createShipment').find('input[name="route_mode"]').val();
        	var route_to = $('#createShipment').find('input[name="route_to"]').val();
        	var route_inco = $('#createShipment').find('input[name="route_inco"]').val();
        	var temp = $('#createShipment').find('input[name="temp"]').val();
        	var rh = $('#createShipment').find('input[name="rH"]').val();
        	var typeOfReferences = $('#typeOfReferences').val();
        	var shipment_number = $('#createShipment').find('input[name="shipment_number"]').val();
        	var comments = $('#createShipment').find('input[name="comments"]').val();
        	var goods = $('#goods').val();
        	var devices = $('#devices').val();
        	var Exp_date = $('#createShipment').find('input[name="Exp_date"]').val();
        	var date =  new Date(Exp_date); 
        	date.setTime(date.getTime() + (330 * 60 * 1000));
        	var isoDate = date.toISOString();
/*         	var text = $('#createShipment').find('input[name="internalshipment"]').val();
        	var text = $('#createShipment').find('input[name="internalshipment"]').val(); */
        	var val = $('#routes').val();
        	//alert(val);
	       	var res = val.split(",");
       	  	var x = res[1];
       	 	var valg = $('#goods').val();
     	//alert(val);
	       	var res = valg.split(",");
    	  	var goodsId = res[0];
       	  	
        	 var table = $('#inboxesvalues').tableToJSON();
        	var value=$("input:radio[name=event]:checked").val();
    		var partner = $("#partner_from_"+value).text();
        	var event = $("#event_name_"+value).text();
        	var datee = $("#date_"+value).text();
               	if(shipment_number == ""){
				var text = "Enter Shipment Number";
				error.innerHTML = text;
				$("#shipment_number").focus().css("border","1px solid red");
				return false;
		 	}
        	if(typeOfReferences == ""){
				var text = "Select Reference";
				error.innerHTML = text;
				$("#typeOfReferences").focus().css("border","1px solid red");
				return false;
		 	}
        	if(routes == ""){
				var text = "Select Route";
				error.innerHTML = text;
				$("#routes").focus().css("border","1px solid red");
				return false;
		 	}
        	if(goods == ""){
				var text = "Select Goods";
				error.innerHTML = text;
				$("#goods").focus().css("border","1px solid red");
				return false;
		 	}
        	if(devices == ""){
				var text = "Select Device";
				error.innerHTML = text;
				$("#devices").focus().css("border","1px solid red");
				return false;
		 	}
        	if(Exp_date == ""){
				var text = "Enter Delivery Date";
				error.innerHTML = text;
				$("#expected_date").focus().css("border","1px solid red");
				return false;
		 	}
        	var json_value = {        		     			
        					"shipment_Num":shipment_number,
        					"customerId":cust_name,
        					"shipment_Number":internalshipment,
        					"typeOfReference":typeOfReferences,
        					"comments":comments,
        					"routeId":x,
        					"routeFrom":route_from,
        					"routeTo":route_to,
        					"goodsId":goodsId,
        					"goodsType":goods,
        					"parnterFrom":bp_name,
        					"deviceId":devices,
        					"allEvents":table,
        					"incoTerms":route_inco,
        					"mode":route_mode,
        					"temp":temp,
        					"rH":rh,
        					"partner":partner,
        					"event":event,
        					"datee":isoDate,
        					"estimatedDeliveryDate":isoDate
        					};
        	
        	/* alert(JSON.stringify(json_value));
        	return false; */
      // var rowCount = $('#draftTable >tbody >tr>td').length;
      // alert(rowCount)
       var url = "http://localhost:8080/SCMXPert/createNewShipment";
        	$.ajax({
		       	 type:"post",
				 url:url,
				 headers: { Accept : "application/json",
							'Content-Type': "application/json" 
					 		}, 
				 data: JSON.stringify(json_value),
        	    success: function(data) {
        	    	$("#backgroundBlur").show();
        	    	$(".showviewdata").show().html('<div class="alert alert-success" role="alert">Successful Created</div>');
        	    	window.location.href = "Dashboard.jsp";
        	    	/* $("#notified").empty();
        	    	$("#notified").html('<div class="alert alert-success" role="alert">Successful Created</div>'); */
        	    	//$(".alert").hide("slow");
        	    
        	    	
        	    	/*    	
        	    	        	    	
					var adddraft = '<tr class="p-0" style=" font-size:12px;font-weight:bold;"><td>'+internalshipment+'</td><td>'+shipment_number+'</td><td>'+route_from+'</td><td>'+route_to+'</td><td>'+goods+'</td><td>'+route_inco+'</td><td><span class="bg-danger" style="margin-left:4px;width: 100px;padding: 5px;border-radius: 3px;color: #fff;font-weight: 600;" onclick="javascript:deleteDraft(\''+internalshipment+'\');">Delete Draft</span></td></tr>';
					$("#draftTable tbody").append(adddraft);
					//var rowCount = $('#draftTable >tbody >tr').length;
					 */
        	    },
        	});  
        	
        	
        	
        	
        }
        function reset()
        {

        	var route_from = $('#createShipment').find('input[name="route_from"]').val('');
        	var route_mode = $('#createShipment').find('input[name="route_mode"]').val('');
        	var route_to = $('#createShipment').find('input[name="route_to"]').val('');
        	var route_inco = $('#createShipment').find('input[name="route_inco"]').val('');
        	var typeOfReferences = $('#typeOfReferences').val('');
        	var shipment_number = $('#createShipment').find('input[name="shipment_number"]').val('');
        	var comments = $('#comments').val('');
        	var goods = $('#goods').val('');
        	var routes = $('#routes').val('');
        	var devices = $('#devices').val('');
        	var Exp_date = $('#createShipment').find('input[name="Exp_date"]').val('');
/*         	var text = $('#createShipment').find('input[name="internalshipment"]').val();
        	var text = $('#createShipment').find('input[name="internalshipment"]').val(); */
        	var value=$("input:radio[name=event]:checked").css("display","none");
        	$("#inboxesvalues>thead").hide();
        	$("#inboxesvalues>tbody").empty();
        	$("#tableheadercols").show();
    /* 		var partner = $("#partner_name_"+value).val();
        	var event = $("#event_name_"+value).val();
        	var datee = $("#event_date_"+value).val(); */
        }
        function refresh()
        {
        	 location.reload();
        }
        
        function deleteDraft(id)
        {
        	
            var url = "http://localhost:8080/SCMXPert/deleteDraft/"+id;
        	$.ajax({
		       	 type:"post",
				 url:url,
				 headers: { Accept : "application/json",
							'Content-Type': "application/json" 
					 		}, 
				 
        	    success: function(data) {
					$("#draftTable tbody").empty();
        	    	$.getJSON("http://localhost:8080/SCMXPert/getAllDrafts", function(data){
            			$(".dataTables_empty").hide();
    					$.each(data,function(key,val){
    						 var adddraft = '<tr class="p-0 savedraft" style=" font-size:12px;font-weight:bold;" id="savedraft_'+val.internal_Shipment_Id+'"><td>'+val.internal_Shipment_Id+'</td><td>'+val.shipment_Number+'</td><td>'+val.routeFrom+'</td><td>'+val.routeTo+'</td><td>'+val.goodsType+'</td><td>'+val.inco+'</td><td><span><input type="radio" val="'+val.internal_Shipment_Id+'" onclick="javascript:selectDraft(\''+val.internal_Shipment_Id+'\')" name="selectdraftselect" style="width:12px;position: relative;top:4px;margin-right:10px;"/></span><span><img src="./images/delete.png" onclick="javascript:deleteDraft(\''+val.internal_Shipment_Id+'\');" alt="Delete Draft" style="width:12px;cursor: pointer;"/></span></td></tr>';
    							$("#draftTable tbody").append(adddraft);
    					});
            			/* var adddraft = '<tr class="p-0" style=" font-size:12px;font-weight:bold;"><td>'+internalshipment+'</td><td>'+shipment_number+'</td><td>'+route_from+'</td><td>'+route_to+'</td><td>'+goods+'</td><td>'+route_inco+'</td><td><span><input type="checkbox" style="width:15px;height:15px;"/></span><span><img src="./images/delete.png" onclick="javascript:deleteDraft(\''+internalshipment+'\');" alt="Delete Draft"/></span></td></tr>';
    					$("#draftTable tbody").append(adddraft); */
            			
            		});
        	    },
        	}); 
        }
        
        
     /*    function changeEXpDate(dateval)
        {
        	var part_from = $.cookie("BP_ID");
        	var eventsboxes = '<tr style="position:relative;bottom:0px;"><td class="p-1"><input type="radio" disabled="disabled" name="event" style="width:12px;width: 45px;text-align: center;" value="E0099"/></td><td class="p-1" style="font-size: 10px;"></td><td class="p-1" style="font-size: 10px;"><input type="text" value="E0099" style="height:25px;font-size: 12px;font-weight:bold;" /> </td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_" value="'+part_from+'" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" class="form-control mb-1  inputboxesevents" id="event_name_E00099" value="Complete" style="height:25px;font-size: 12px;font-weight:bold;" /></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="event_date_'+dateval+'" value="'+dateval+'" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;" /></td></tr>';
				$("#inboxesvalues>tbody").append(eventsboxes);
        	
        } */
      </script>
      <!-- <script>
            
            var index;  // variable to set the selected row index
            function getSelectedRow()
            {
                var table = document.getElementById("inboxesvalues");
                for(var i = 1; i < table.rows.length; i++)
                {
                    table.rows[i].onclick = function()
                    {
                        // clear the selected from the previous selected row
                        // the first time index is undefined
                        if(typeof index !== "undefined"){
                            table.rows[index].classList.toggle("selected");
                        }
                       
                        index = this.rowIndex;
                        this.classList.toggle("selected");

                    };
                }
                    
            }
  

            getSelectedRow();
            
            
            function upNdown(direction)
            {
                var rows = document.getElementById("inboxesvalues").rows,
                    parent = rows[index].parentNode;
                 if(direction === "up")
                 {
                     if(index > 1){
                        parent.insertBefore(rows[index],rows[index - 1]);
                        // when the row go up the index will be equal to index - 1
                        index--;
                    }
                 }
                 
                 if(direction === "down")
                 {
                     if(index < rows.length -1){
                        parent.insertBefore(rows[index + 1],rows[index]);
                        // when the row go down the index will be equal to index + 1
                        index++;
                    }
                 }
            }
            
        </script> -->

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
<h2 style="text-align:center;margin:0px;"><img src="./images/Capture_scm_half_logo_1.png" style="width:50px;height:50px;"> Create New Shipment</h2>

<div class="container">
<div class="row" id="createShipment">
<div class="col-sm-12 col-md-12 col-lg-12 text-center">
<div class="row text-center">
<div class="col-sm-12 col-md-12 col-lg-12"><a href="Dashboard.jsp"><button class="btn btn-dark float-right" style="height:25px;padding: 1px 15px;font-size: 12px;font-weight: 600;">Back</button></a></div>
<div id="error"></div>
	<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-2 pr-0 pb-0 " >
	<div style="border-radius:3px;padding:1%;background:linear-gradient(180deg, rgba(255, 255, 255, 1) 0%, rgba(242, 242, 242, 1) 0%, rgba(228, 228, 228, 1) 100%, rgba(255, 255, 255, 1) 100%);border:1px solid #000;">
		<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Internal Shipment ID :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Shipment Id" style="height:25px;font-size: 12px;font-weight:bold;" name="internalshipment" id="internalshipment" disabled="disabled"/></span></div>
		<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Customer Name :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Customer Name & (ID)" id="Cust_Id" name="Cust_Id" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Partner Name :</span><span class="float-left" style="width:45%;"><input type="text" class="form-control" placeholder="Business Partner Name2 & (ID)" id="bp_name" name="bp_name" style="height:25px;font-size: 12px;font-weight:bold;" disabled="disabled"/></span></div>
		</div>
	</div>
	<div class="col-sm-12 col-md-6 col-lg-6 pt-2 pl-2 pr-0 pb-0  text-center">
	<div style="border-radius:3px;padding:1%;background:linear-gradient(180deg, rgba(255, 255, 255, 1) 0%, rgba(242, 242, 242, 1) 0%, rgba(228, 228, 228, 1) 100%, rgba(255, 255, 255, 1) 100%);border:1px solid #000;">
		<div style="width:100%;height:30px;">
			<span style="width:15%;height:30px;float:left;font-weight:600;line-height: 15px;font-size: 12px;">Shipment :- </span><span style="width:60%;height:30px;float:left;padding-right:1%;"><input type="text" class="form-control" id="route_from" name="route_from" placeholder="Shipment From" disabled="disabled" style="background:#ccd0d4;font-weight:600;height:25px;font-size: 12px;"></span><span style="width:25%;height:25px;float:left;"><input type="text" class="form-control" placeholder="Mode" id="route_mode" name="route_mode" disabled="disabled" style="background:#ccd0d4;font-weight:600;height:25px;font-size: 12px;"></span><span style="clear:both;"></span>
		</div>
		<div style="width:100%;height:30px;">
			<span style="width:15%;height:30px;float:left;"></span><span style="width:60%;height:30px;float:left;padding-right:1%;"><input type="text" class="form-control" placeholder="Shipment to" id="route_to" name="route_to"  disabled="disabled" style="background:#ccd0d4;font-weight:600;height:25px;font-size: 12px;"></span><span style="width:25%;height:30px;float:left;"><input type="text" class="form-control" placeholder="Inco" disabled="disabled" id="route_inco" name="route_inco" style="background:#ccd0d4;font-weight:600;height:25px;font-size: 12px;"></span><span style="clear:both;"></span>
		</div>
		<div style="width:100%;height:30px;">
			<span style="width:15%;height:30px;float:left;font-weight:600;line-height: 15px;font-size: 12px;">Parameters :- </span><span style="width:30%;height:30px;float:left;padding-right:1%;"><input type="text" class="form-control" name="temp" id="temp" placeholder="Temp from-to" disabled="disabled" style="background:#ccd0d4;font-weight:600;height:25px;font-size: 12px;"></span><span style="width:30%;height:40px;float:left;padding-right:1%;"><input type="text" class="form-control" name="rH" id="humdity" placeholder="RH from - to" disabled="disabled" style="background:#ccd0d4;font-weight:600;height:25px;font-size: 12px;"></span><span style="clear:both;"></span>
		</div>
		<!-- <div style="width: 100%;height: 45px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 30px;">Internal Shipment ID :</span><span class="w-50 float-left"><input type="text" class="form-control" placeholder="Shipment Id"/></span></div>
		<div style="width: 100%;height: 45px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 30px;">Customer Name :</span><span class="w-50 float-left"><input type="text" class="form-control" placeholder="Customer Name & (ID)"/></span></div>
		<div style="width: 100%;height: 45px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 30px;">Partner Name :</span><span class="w-50 float-left"><input type="text" class="form-control" placeholder="Business Partner  Name 2  & (ID)"/></span></div> -->
		</div>
	</div></div></div>
	<div class="col-sm-12 col-md-6 col-lg-6 pt-0 pl-2 pr-0 pb-2">
	<div style="padding:1%;border-radius:3px;width:100%;height:250px;border:1px solid #000;">
		<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Shipment Number :</span><span class="float-left" style="width:40%;"><input type="text" class="form-control" placeholder="Shipment Number" id="shipment_number" name="shipment_number" style="height:25px;font-size: 12px;" autocomplete="off"/></span><span class="" style="margin-top: 10px;line-height: 25px;margin-left: 3px;"><span class="bg-primary p-1" style="border-radius: 3px"><img src="./images/bar-code.png" style="width:18px;height:18px;margin:1px;"/></span></span></div>
		<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Type of Reference :</span><span class="float-left" style="width:40%;"><select class="form-control" id="typeOfReferences" name="typeOfReferences" style="height:25px;font-size: 12px;padding-top: 3px;"><option value="">Select Reference</option></select></span><span></span></div>
		<div style="width: 100%;height: 60px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Shipment Description :</span><span class="float-left" style="width:40%;"><textarea class="form-control" id="comments"style="height:55px;font-size: 12px;padding-top: 3px;" name="comments" placeholder="Enter Your Description"></textarea></span><span></span></div>
		<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Route Details :</span><span class="float-left" style="width:40%;"><select class="form-control" id="routes" name="routes" onchange="javascript:SelectRoute(this.value);" style="height:25px;font-size: 12px;padding-top: 3px;"><option value="">Select Route</option></select></span><span class="ml-1"><span class="" style="margin-top: 10px;line-height: 25px;"><span class="bg-primary" style="padding: 3px 10px;border-radius: 3px;color:#fff;font-weight:bold;font-size:12px;cursor:pointer;" title="Add Route" onclick="javascript:addRoute();">+</span></span></div>
		<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Goods Type :</span><span class="float-left" style="width:40%;"><select class="form-control" id="goods" name="goods" onchange="javascript:SelectGoods(this.value);" style="height:25px;font-size: 12px;padding-top: 3px;"><option value="">Select Goods</option></select></span><span class="" style="margin-top: 10px;line-height: 25px;margin-left: 3px;"><span class="bg-primary" style="padding: 3px 10px;border-radius: 3px;color:#fff;font-weight:bold;font-size:12px;">+</span></span></div>
		<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Device :</span><span class="float-left" style="width:40%;"><select class="form-control" name="devices" id="devices" style="height:25px;font-size: 12px;padding-top: 3px;"><option value="">Select Device</option></select></span><span class="" style="margin-top: 10px;line-height: 25px;margin-left: 3px;"><span class="bg-primary" style="padding: 3px 4px;border-radius: 3px"><img src="./images/bar-code.png" style="width:18px;height:18px;margin:1px;"/></span></span></div>
		<div style="width: 100%;height: 30px;font-size: 12px;"><span class="w-50 p-1 font-weight-bold float-left text-right" style="line-height: 15px;">Expected Del.Date :</span><span class="float-left" style="width:40%;"><input type="text" class="form-control" name="Exp_date" placeholder="Expected Delivery Date" style="height:25px;font-size: 12px;" id="expected_date"/></span><span></span></div>
	</div>
	</div>
	<div class="col-sm-12 col-md-6 col-lg-6 pt-0 pl-2 pr-0 pb-2  text-center">
		<div class="" id="" style="padding:1%;border-radius:3px;width:100%;height:250px;border:1px solid #000;">
		<div style="height: 190px;overflow-y: auto;">
			<h3 style="text-align:center;" id="tableheadercols">Select Any Routes</h3>
			<table id="tableHeader">
				<thead style="font-size:12px;">
					<tr>
						<th style="padding: 0px 7px;"></th>
						<th style="font-size: 12px;padding: 0px 4px;">Event Id</th>
						<th style="font-size: 12px;padding: 0px 24px;">Partner</th>
						<th style="font-size: 12px;padding: 0px 65px;">Event</th>
						<th style="font-size: 12px;padding: 0px 65px;">Date</th>
					</tr>
				</thead>
			</table>
			<table class="" id="inboxesvalues">
				<thead style="font-size:12px;">
					<tr style="display:none;">
						<th>Event Status</th>
						<th>event_Id</th>
						<th>partner</th>
						<th>event</th>
						<th>date</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table></div>
			<div class="w-100 mt-2 mb-2"><span style="width:40%;height:40px;float:left;margin-left: 10%;padding-top:5px;"><input type="text" placeholder="System Date & Time" id="sysdateandtime" class="form-control" style="height:25px;font-size: 12px;"></span><span class="" style="width:50%;height:40px;float:right;padding-top:5px;"><img src="./images/up.png"  onclick="upNdown('up');" style="width:20px;margin-right:2%;"><img src="./images/below.png" onclick="upNdown('down');" style="width:20px;margin-right:2%;"><img src="./images/delete.png" onclick="javascript:deletee();" style="cursor:pointer;width:20px;margin-right:2%;"><img src="./images/synchronize.png" style="width:20px;margin-right:2%;" onclick="javascript:refreshicon();"><img src="./images/plus-filled.png" style="width:20px;margin-right:2%;" onclick="javascript:dialogboxAddEvent();" class="AddButtonIcon"></span><span style="clear:both;"></span></div>
		</div>
	</div>
	<div class="col-sm-12 col-md-12 col-lg-12 text-center m-2">
	<div>
			<!-- <button class="btn btn-color m-1">Select Draft</button> -->
			<button class="bg-color margin-rl1 btn-head" onclick="javascript:saveasDraft();">Save as Draft</button>
			<button class="bg-color margin-rl1 btn-head" >Add Tag Info</button>
			<button class="bg-color margin-rl1 btn-head" onclick="javascript:reset();">Reset</button>
			<a href="Dashboard.jsp"><button class="bg-color margin-rl1 btn-head" >Cancel Shipment</button></a>
			<button class="bg-color margin-rl1 btn-head" onclick="javascript:refresh();">Refresh</button>
			<button class="bg-color margin-rl1 btn-head" onclick="javascript:createShipment();">Create Shipment</button>
			
		</div>
		<div id="notified"></div>
	</div>
	<div class="col-sm-12 col-md-12 col-lg-12 text-center m-2" style="overflow-x:auto;">

		<table class="table table-striped table-bordered" id="draftTable" style="overflow-x:auto;">
			<thead>
				<tr class="p-0" style=" font-size:12px;">
					<th>Draft Internal Id</th>
					<th>Template Name</th>
					<th>Ship from</th>
					<th>Ship to</th>
					<th>Goods Type</th>
					<th>Inco Terms</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
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
      	<div style="width:70%;margin:auto;text-align:center;margin-top: 2%;" ><button id="CancelEvent" class="bg-color margin-rl1 btn-head" >Cancel Event</button>
      	<button id="AddEvent" class="bg-color margin-rl1 btn-head"  onclick="javascript:addEvent();">Add Event</button></div>
      	
      	
      </div>
</body>
</html>
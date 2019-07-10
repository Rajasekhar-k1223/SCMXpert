$(document).ready(function(){
	$("#CancelEvent,.body_blur,.close").on("click",function(){
		$(".body_blur,.AddEventBlock").hide();
		$("body").css("overflow","auto");
	});
});    	

var part_from = $.cookie("BP_ID");
        	var SCM_id = $.cookie("SCM_id");
        	var ship_id = $.cookie("shp_id");
        	var ship_num = $.cookie("shipment_Num");
			var device_id = $.cookie("device_Id");
    	 	window.onload = function(){
    	 		$.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+SCM_id, function( data ) {
    	        	$.each(data.route,function(keys,values){
    					 var select_route_items = '<option value="'+values.route_Id+'">'+values.from+','+values.to+'</option>';
    					 $("#routes").append(select_route_items);
    					 var select_returnroute_items = '<option value="'+values.route_Id+'">'+values.to+'</option>';
    					 $("#return_location").append(select_returnroute_items);
    				});
    	        	$.each(data.typeOfReferences,function(keys,values){
       				 var select_typeOfReferences_items = '<option value="'+values+'">'+values+'</option>';
       				 $("#typeOfReferences,#typeOfReferences1").append(select_typeOfReferences_items);
    	        	});   
    	        	$.each(data.business_Partner_Id,function(keys,values){
       				 var event_partner_from = '<option value="'+values+'">'+values+'</option>';
       				 $("#event_partner_from,#selectvalues").append(event_partner_from);
    	        	});   
    	        });
        	 	$("#shipment_id").val(ship_id);
        	 	$("#shipment_number").val(ship_num);
        	 	$("#connected_device").val(device_id);
        	 	$.getJSON("http://localhost:8080/SCMXPert/getAllTxns/"+ship_id,function(filters){
        	 		var event_sNO = []; 
     				$.each(filters,function(key,value){
     					event_sNO.push(value.event_SNo);
     				});
     				
     				
     				event_sNO.sort(function(a, b){return a-b});
     				for(i=0;i<event_sNO.length;i++)
    					{
    						var event_num = event_sNO[i];
    		 				$.each(filters,function(kew,val){
    		 					
    		 		 					if(event_num == val.event_SNo)
    		 		 						{
    		 		 						var status_length = val.event_Name.length;
    		 		 						var theDate = new Date( Date.parse(val.event_Exec_Date));
    		 		 		             	var date_create = theDate.toLocaleDateString();
    		 			             		var theDate = new Date( Date.parse(val.event_Exec_Date));
     		 			               		var date_create = theDate.toLocaleDateString();
    		 			             		var key = kew+1;
    		 		 		             	if(val.event_Status == "Completed"){
     		 			             			var eventsboxes = '<tr id="row_val_'+val.event_Id+'" class="Event_class"><td class="p-1"></td><td class="" style="font-size: 10px;padding:1px;"><div class="completedBackground eventNum" id="'+val.event_Id+'">'+val.event_Id+'</div></td><td class="pl-1"><div class="completedBackground eventBp" id="partner_from_'+val.event_Id+'">'+val.partner_From+'</div></td><td class="pl-1"><div class="completedBackground eventName" id="event_name_'+val.event_Id+'">'+val.event_Name+'</div></td><td class="pl-1"><div class="completedBackground eventDate" id="date_'+val.event_Id+'">'+date_create+'</div></td><td class="pl-1"><div class="completedBackground eventStatus" id="event_status_'+val.event_Id+'">'+val.event_Status+'</div></td></tr>';
     		 			             			}else{
     		 			             			var eventsboxes = '<tr id="row_val_'+val.event_Id+'" class="Event_class"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+val.event_Id+'" id="'+val.event_Id+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div class="eventNum" id="'+val.event_Id+'">'+val.event_Id+'</div></td><td class="pl-1"><div class="eventBp" id="partner_from_'+val.event_Id+'">'+val.partner_From+'</div></td><td class="pl-1"><div class="eventName" id="event_name_'+val.event_Id+'">'+val.event_Name+'</div></td><td class="pl-1"><div class="eventDate" id="date_'+val.event_Id+'">'+date_create+'</div></td><td class="pl-1"><div class="eventStatus" id="event_status_'+val.event_Id+'">'+val.event_Status+'</div></td></tr>';
    		 			             		}
    		 				 				$("#inboxesvalues>tbody").append(eventsboxes);
    	 		 						} 
    		 		 				});
    		 				var events_is = $('#inboxesvalues tr:last').find('td:eq(1) div').attr("id");
    			        	$("#"+events_is).prop("checked", true);
    					}
        	 	});
    	 	}

function CompleteShipment()
{
	var value=$("input:radio[name=event]:checked").val();
	var partner = $("#partner_name_"+value).val();
	var event = $("#event_name_"+value).val();
	var datee = $("#event_date_"+value).val();
	var shipment_number = $("#shipment_number").val();
	var Event_Id = $("#event_id_val").val();
	var Event_Type = $("#event_type_val").val();
	var Partner_From = $("#event_partner_from").val();
	var Event_Reference = $("#event_reference").val();
	var routes = $("#routes").val();
	var Type_of_Reference = $("#typeOfReferences1").val();
	var Event_Description = $("#event_description").val();
	var device_return_location = $("#return_location").val();
	var error = document.getElementById("error");
	 var update_json_data = {
				"shipment_Number" : shipment_number,
				"partner" : partner,
				"event" : event,
				"dateandTime"    : datee,
				"eventId"  : Event_Id,
				"eventType" : Event_Type,
				"partnerFrom" : Partner_From,
				"partnerTo" : Partner_From,
				"receivingReferenceNumber"  : Event_Reference,
				"typeOfReference" : Type_of_Reference,
				"Comments" : Event_Description,
				"deviceReturnLocation" : device_return_location
	}; 
	 if(Event_Id == ""){
			var text = "Select Event";
			error.innerHTML = text;
			$("#event_id_val").focus().css("border","1px solid red");
			return false;
	 	}else{
	 		$("#event_id_val").focus().css("border","1px solid #ced4da");
	 	}
	 if(Event_Type == ""){
			var text = "Select Event";
			error.innerHTML = text;
			$("#event_type_val").focus().css("border","1px solid red");
			return false;
	 	}else{
	 		$("#event_id_val").focus().css("border","1px solid #ced4da");
	 	}
	 if(Partner_From == ""){
			var text = "Select Any Partner";
			error.innerHTML = text;
			$("#event_partner_from").focus().css("border","1px solid red");
			return false;
	 	}else{
	 		$("#event_id_val").focus().css("border","1px solid #ced4da");
	 	}
	 if(routes == ""){
			var text = "Select Any Route";
			error.innerHTML = text;
			$("#routes").focus().css("border","1px solid red");
			return false;
	 	}else{
		 		$("#event_id_val").focus().css("border","1px solid #ced4da");
		 	}
	 if(Event_Reference == ""){
			var text = "Enter Reference Id";
			error.innerHTML = text;
			$("#event_reference").focus().css("border","1px solid red");
			return false;
	 	}else{
	 		$("#event_id_val").focus().css("border","1px solid #ced4da");
	 	}
	 if(Type_of_Reference == ""){
			var text = "Select Reference Type";
			error.innerHTML = text;
			$("#typeOfReferences1").focus().css("border","1px solid red");
			return false;
	 	}else{
	 		$("#event_id_val").focus().css("border","1px solid #ced4da");
	 	}
	 if(device_return_location == ""){
			var text = "Select Reference Type";
			error.innerHTML = text;
			$("#return_location").focus().css("border","1px solid red");
			return false;
	 	}else{
	 		$("#event_id_val").focus().css("border","1px solid #ced4da");
	 	}
	 
	 var url = "http://localhost:8080/SCMXPert/completeNewShipment";
	 $.ajax({
		 type:"post",
		 url:url,
		 headers: { Accept : "application/json",
					'Content-Type': "application/json" 
			 		}, 
		 data: JSON.stringify(update_json_data),
		 success:function(response){
			 $("#backgroundBlur").show();
 	    	$(".showviewdata").show().html('<div class="alert alert-success" role="alert">Successful Created</div>');
 	    	window.location.href = "Dashboard.jsp";

		 }
	 });
}

function geteventvalueslist(event)
{
	var part_from = $("#partner_from_"+event).text();
	var event_name = $("#event_name_"+event).text();
	var event_date = $("#event_date_"+event).text();
	$("#event_id_val").val(event);
	$("#event_type_val").val(event_name);
	$("#event_partner_from").val(part_from);
	
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
function dialogboxAddEvent()
{
	$("body").css("overflow","hidden");
	$(".body_blur,.AddEventBlock").show();       	
}
function moveDown()
{
	var value=$("input:radio[name=event]:checked").val();
	geteventvalueslist(value);
}
function reset()
{
	$("#event_id_val").val("");
	$("#event_type_val").val("");
	$("#event_partner_from").val("");
	$("#event_reference").val("");
	$("#typeOfReferences1").val("Select Type Reference");
	$("#event_description").val("");
	$("#return_location").val("Select Location");
	$("#routes").val("Select Location");
}
function CancelReceipt()
{
	window.location.href = "Dashboard.jsp";
}
function addEvent()
{
	var selectbp = $("#selectvalues").val();
	var selectevents = $("#eventslist").val();
	var eventid = $("#eventId").val();
	var events_is = $('#inboxesvalues tr:last').find('td:eq(1) div').attr("id");
		var events_length = $('#inboxesvalues>tbody .Event_class').length;
		var radiovalue=$("input:radio[name=event]:checked").val();
		$("#"+radiovalue).prop("checked", false);
/*       		var length_events = events_length+1
		var eventNewId = "E000"+length_events; */
		
         		
		
		//var evetntable = '<tr id="row_val_'+value+'"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+value+'"/></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+value+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 50px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;"  /> </td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_'+value+'" value="'+partner+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;"/></td><td class="pl-1"><input type="text" class="form-control mb-1  inputboxesevents" id="event_name_'+value+'" value="'+event+'" style="height:25px;font-size: 12px;font-weight:bold;"/></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="event_date__copy'+value+'" value="" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;"/></td></tr>';
		var eventsboxes = '<tr id="row_val_'+eventid+'" class="Event_class"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+eventid+'" id="'+eventid+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 40px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;">'+eventid+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 70px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="partner_from_'+eventid+'">'+selectbp+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 160px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="event_name_'+eventid+'" >'+selectevents+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 100px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="date_'+eventid+'" ></div></td><td class="pl-1"><div class="eventStatus" id="event_status_'+eventid+'"></div></td></tr>';
 	 $("#inboxesvalues>tbody").append(eventsboxes);
 	 //$("#date_"+eventNewId).datepicker();
 	$("#"+eventid).prop("checked", true);
 	var div = document.getElementById(eventid);
 	setTimeout(function() {
 	    div.focus();
 	}, 0);
 	$("body").css("overflow","auto");
	$(".body_blur,.AddEventBlock").hide();
	$("#selectvalues,#eventslist,#eventId").val('');
	
}
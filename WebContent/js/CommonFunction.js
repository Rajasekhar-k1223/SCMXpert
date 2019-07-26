function changebpid(scmid,bpid)
{
	$.cookie("SCM_id", scmid);
	$.cookie("BP_ID", bpid);
	 $.getJSON('http://localhost:8080/SCMXPert/getFiltersData/'+scmid, function(filter){
     	$.each(filter,function(key,value){
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
	//liveshipments_list(scmid,bpid);

}

function getbp_id(valuesbp)
{
	var SCM_id = $("#Cust_Id").val();
	$.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+SCM_id, function( data ) { 		
 		$.each(data.bussinesPartnersDetails,function(key,val){
			if(valuesbp == val.bp_Id)
				{ 
					$("#company_name").val(val.company_Name).css("font-weight","bold");
					$("#inboxesvalues>tbody").empty();
				$.each(val.events,function(keys,values){
					var status_length = values.event_Status.length;
						var theDate = new Date( Date.parse(values.event_Exec_Date));
		             	var date_create = theDate.toLocaleDateString();
		             	var key = keys+1;
		             	  var first = $(location).attr('pathname');
		             	    first.indexOf(1);
		             	    first.toLowerCase();
		             	    first = first.split("/")[2];
		             	    if(first == "RouteMaster.jsp")
		             	    	{
		             	    	var eventsboxes = '<tr id="row_val_'+values.event_Id+'" class="Event_class"><td class="p-1" style="display: block;"><input type="radio" name="event" style="width:14px;" value="'+values.event_Id+'" id="'+values.event_Id+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 50px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="'+values.event_Id+'">'+values.event_Id+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 90px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="partner_from_'+values.event_Id+'">'+val.bp_Id+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 180px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="event_name_'+values.event_Id+'">'+val.company_Name+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 150px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="date_'+values.event_Id+'">'+values.event_Status+'</div></td></tr>';
		             	    	}
		             	    if(first == "CreateShipment.jsp"){
		             	    	var eventsboxes = '<tr id="row_val_'+values.event_Id+'" class="Event_class"><td class="p-1" style="display: block;"><input type="radio" name="event" style="width:14px;" value="'+values.event_Id+'" id="'+values.event_Id+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 50px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="'+values.event_Id+'">'+values.event_Id+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 90px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="partner_from_'+values.event_Id+'">'+val.bp_Id+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 190px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="event_name_'+values.event_Id+'">'+values.event_Status+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 160px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="date_'+values.event_Id+'"></div></td></tr>';
		             	    	$("#tableHeader").show();
		             	    }
 				$("#inboxesvalues>tbody").append(eventsboxes);
 				$('#event_date_'+values.event_Id).datepicker();
 				$(".E0001").attr('disabled', 'disabled').css({"background":"#ccd0d4"});
 			});
				var events_is = $('#inboxesvalues>tbody>tr:first').find('td:eq(1) div').attr("id");
	        	$("#"+events_is).prop("checked", true);
			}
			 var sysdateime = $("#sysdateandtime").val();
	         	$("#event_date_E0001").val(sysdateime);
			
		});
	});
	
	
}
function upNdown(val)
{
	var value=$("input:radio[name=event]:checked").val();
	if(val == "up"){
		$("#row_val_"+value).insertBefore($("#row_val_"+value).prev()); 
	}
	if(val == "down"){
		$("#row_val_"+value).insertAfter($("#row_val_"+value).next()); 
	}
}
function refreshicon()
{
	 var first = $(location).attr('pathname');
	    first.indexOf(1);
	    first.toLowerCase();
	    first = first.split("/")[2];
	    if(first == "RouteMaster.jsp")
	    	{
	    		var bp_name = $("#bp_name").val();
	    		getbp_id(bp_name);
	    	}
	    if(first == "CreateShipment.jsp"){
	    	var val = $('#routes').val();
	    	var res = val.split(",");
	    	 getbp_id(res[0]);
	    	  var x = res[1];
	    	  var SCM_id = $("#Cust_Id").val();
	    	  $("#inboxesvalues>thead").show();
	    	  $.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+SCM_id, function( data ) {
	     			$.each(data.route,function(keys,values){
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
}

function deletee()
{
	var value=$("input:radio[name=event]:checked").val();
	$("#row_val_"+value).remove();
}
function dialogboxAddEvent()
{
	var lengthoftr = $("#inboxesvalues >tbody tr").length;
	
	if(lengthoftr == 0)
		{
			alert("Atleast Select One Route");
			return false;
		}else{
			$("body").css("overflow","hidden");
        	$(".body_blur,.AddEventBlock").show();		
		}
	       	
}
function selectBpName(valee)
{
	var SCM_id = $("#Cust_Id").val();
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
	var first = $(location).attr('pathname');
	first.indexOf(1);
	first.toLowerCase();
	first = first.split("/")[2];
	if(first == "RouteMaster.jsp"){
		var selectbp = $("#selectvalues").val();
		var selectevents = $("#eventslist").val();
		var eventid = $("#eventId").val();
		var eventPartnerName = $("#event_name_E0010").text();
		var events_is = $('#inboxesvalues tr:last').find('td:eq(1) div').attr("id");
			var events_length = $('#inboxesvalues>tbody .Event_class').length;
			var radiovalue=$("input:radio[name=event]:checked").val();
			$("#"+radiovalue).prop("checked", false);
	/*       		var length_events = events_length+1
			var eventNewId = "E000"+length_events; */
			
	         		
			
			//var evetntable = '<tr id="row_val_'+value+'"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+value+'"/></td><td class="" style="font-size: 10px;padding:1px;"><input type="text" class="mb-1 form-control" value="'+value+'" style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 50px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;"  /> </td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="partner_name_'+value+'" value="'+partner+'" style="text-align:center;height:25px;font-size: 12px;font-weight:bold;"/></td><td class="pl-1"><input type="text" class="form-control mb-1  inputboxesevents" id="event_name_'+value+'" value="'+event+'" style="height:25px;font-size: 12px;font-weight:bold;"/></td><td class="pl-1"><input type="text" class="form-control mb-1 inputboxesevents" id="event_date__copy'+value+'" value="" placeholder="Select Date" style="height:25px;font-size: 12px;font-weight:bold;"/></td></tr>';
			var eventsboxes = '<tr id="row_val_'+eventid+'" class="Event_class"><td class="p-1" style="display: block;"><input type="radio" name="event" style="width:14px;" value="'+eventid+'" id="'+eventid+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 50px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="'+eventid+'">'+eventid+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 90px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="partner_from_'+eventid+'">'+selectbp+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 180px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="event_name_'+eventid+'">'+eventPartnerName+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 150px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="date_'+eventid+'">'+selectevents+'</div></td></tr>';
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
	}else{
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
			var eventsboxes = '<tr id="row_val_'+eventid+'" class="Event_class"><td class="p-1"><input type="radio" name="event" style="width:14px;" value="'+eventid+'" id="'+eventid+'"/></td><td class="" style="font-size: 10px;padding:1px;"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 50px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;">'+eventid+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 90px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="partner_from_'+eventid+'">'+selectbp+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 190px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="event_name_'+eventid+'" >'+selectevents+'</div></td><td class="pl-1"><div style="text-align: center;height: 25px;font-size: 10px;font-weight: bold;width: 165px;padding: 5px;border-radius: 3px;border: 1px solid #ced4da;" id="date_'+eventid+'" ></div></td></tr>';
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
	
	
	
}
function GoodsMaster(){
	window.location.href = "GoodsMaster.jsp";
}
function RouteMaster()
{
	window.location.href = "RouteMaster.jsp";
}
function inuse()
{
	window.location.href = "InUse.jsp";
}
function Avaliable()
{
	window.location.href = "Available.jsp";
}
function configdevices()
{
	window.location.href = "CreateDeviceTransfer.jsp";
}
function Received()
{
	window.location.href = "ReceiveDevices.jsp";
}
function BusinessPartner()
{
	window.location.href = "BusinessPartner.jsp";
}
function Customer()
{
	window.location.href = "Customer.jsp";
}
function getAllCountriesStates()
{
	var url = "http://localhost:8080/SCMXPert/getAllCountriesStates";
	$.getJSON(url,function(response){
		$.each(response,function(key,value){
			$.each(value,function(k1,v1){
				$.each(v1,function(k2,v2){
					$.each(v2.states,function(k3,v3){
						//console.log("State :- "+v3.stateName+", Country :- "+v2.countryName);
						$.each(v3.cities,function(k4,v4){
							var ship_from = v4+"   "+v2.countryName;
							$("#event_from").append('<option value="'+ship_from+'">'+ship_from+'</option>');
							$("#event_to").append('<option value="'+ship_from+'">'+ship_from+'</option>');
						});
					});
				});
			});
		});
		
	});
}
function getListOfBPIds()
{
	var cust_id = $("#Cust_Id").val();
	$.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+cust_id, function( data ) { 	
	 	$.each(data.business_Partner_Id,function(keys,values){
			//alert(values);
			//alert(values.from+','+values.to+','+values.primary_Mode_Of_Transport);
			 var event_partner_from = '<option value="'+values+'">'+values+'</option>';
			 $("#event_partner_from,#selectvalues").append(event_partner_from);
			 //typeOfReferences_select.push(select_typeOfReferences_items); 
		});   
	});	
}



/* maps */
function mapOnLoad(data,name){
     $(".showmap > div").remove();
     console.log(data);
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

function mapPointsRoute(route_From,route_To,getPointsWays)
{
   	$("#showmap > div").remove();
	$("#showmap").html('<div id="map" style="width:100%;height:455px;z-index:1;"></div>');
    L.mapquest.key = 'e8DYG9q9Zamy3iXMvD2iuo3mI93EGRHF';
    var map = L.mapquest.map('map', {
        center: [0,0],
        layers: L.mapquest.tileLayer('map'),
        zoom: 13
      });
    L.mapquest.directions().route({
      start: '"'+route_From+'"',
      end: '"'+route_To+'"',
      waypoints: getPointsWays
    });
}

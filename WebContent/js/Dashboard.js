function createshipmentlink()
{
   	 window.location.href = "CreateShipment.jsp";
}  
function mapOnLoad(data,name){
       $(".showmap > div").remove();
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
  
  function liveshipments_list(cust_id,bp_id)
  {
  	$(".info").hide();
  	$(".live_shipments").empty();
  	$("#draftTableaa>tbody").empty();
  	$("#bottom_map").show();
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
       	console.log("Hello "+getPointsWays);
       	var ship = [];
       	if(value.delivered_Status != "Delivered")
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
       		var shipment_device = '<div class="p-1 m-1 live_shipments_list row goods_'+value.goods_Desc+' shipdate_'+date_string+' delivery_'+value.shipment_Num+' device_'+value.device_Id+' reference_'+value.type_Of_Reference+' dept_'+value.departments+' one_'+value.device_Id+' two_list two_view_'+value.shipment_Id+' from_'+value.route_From.toLowerCase()+' to_'+value.route_To.toLowerCase()+'" onclick="javascript:showdatadialogbox(\''+value.shipment_Id+'\',\''+value.shipment_Num+'\',\''+value.device_Id+'\',\''+value.created_Date+'\',\''+value.route_From+'\',\''+value.route_To+'\','+getPointsWays+');" style="width:98%;border:1px solid black;border-radius:3px;min-height:60px;cursor:pointer;"  ><div class="from_coordinates_'+value.route_From.toLowerCase()+' to_coordinates_'+value.route_To.toLowerCase()+' device_coordinates_'+value.device_Id+'" style="display:none;">'+value.wayPoints[var_length-1]+'</div><div class="col-md-4 col-sm-4"><h6 class="m-0">'+value.shipment_Id+'</h6><p style="font-size:10px;margin:0px;font-weight:600;">From :- '+value.route_From+'</p><p style="font-size:10px;margin:0px;font-weight:600;">To :- '+value.route_To+'</p></div><div class="col-md-5 col-sm-5"><div style="width:100%;"><p style="float:left;text-align:left;width:50%;font-size:10px;margin:0px;font-weight:600;margin-top:0px;">'+date_create+'</p><p style="float:left;text-align:right;width:50%;font-size:10px;font-weight:600;margin-top:0px;">'+delivered_Date+'</p><div style="clear:both;"></div></div><div class="text-center m-auto" style="width:75%;height: 10px;position: relative;bottom: 25px;"><div class="p-1" style="width: 12px;border-radius: 15px;background: #268fff;height: 12px;position: relative;left: -5%;bottom: -9.5px;z-index: 1;"></div><div class="progress margin-auto" style="position: relative;height: 0.5rem;"><div class="progress-bar progress-bar-striped progress-bar-animated "style="width:'+value.event_Status+'%;background-size: 0.5rem 0.8rem;background-color:#43b54380;background-image: linear-gradient(45deg,rgba(255, 255, 255, 0.82) 25%,#000000c7 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);"></div></div><div class="p-1" style="width: 12px;border-radius: 15px;background: #268fff;height: 12px;position: relative;left: 96%;bottom: 9px;z-index: 0;"></div><div style="font-size: 12px;font-weight: 600;height: 0px;position: relative;bottom: 5px;width: 100%;text-align: center;">Status: <span style="font-size:'+font_size+'px;">'+value.delivered_Status+'</span></div></div><div class="clear:both;"></div></div><div class="col-md-3 col-sm-3 text-center p-0 imagenotif"><img src="./images/'+alertss+'" style="width:16px;height:16px;margin-top:20px;" class="notif"></div><div style="clear:both"></div></div>';
       			$(".live_shipments").append(shipment_device);
       			var string_json = [];
       		//alert(value.shipment_Id);
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
       					});
			 
       			});
   	   			
       		}
			});
       	
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
       		
       		var shipment_device = '<div class="p-1 m-1 live_shipments_list row goods_'+value.goods+' shipdate_'+date_string+' delivery_'+value.shipment_Num+' device_'+value.device_Id+' reference_'+value.type_Of_Reference+' dept_'+value.departments+' one_'+value.device_Id+' two_list two_view_'+value.shipment_Id+' from_'+value.route_From.toLowerCase()+' to_'+value.route_To.toLowerCase()+'" onclick="javascript:showdatadialogbox(\''+value.shipment_Id+'\',\''+value.shipment_Num+'\',\''+value.device_Id+'\',\''+value.created_Date+'\',\''+value.route_From+'\',\''+value.route_To+'\','+getPointsWays+');" style="width:98%;border:1px solid black;border-radius:3px;min-height:60px;cursor:pointer;"  ><div class="from_coordinates_'+value.route_From.toLowerCase()+' to_coordinates_'+value.route_To.toLowerCase()+' device_coordinates_'+value.device_Id+'" style="display:none;">'+value.wayPoints[var_length-1]+'</div><div class="col-md-4 col-sm-4"><h6 class="m-0">'+value.shipment_Id+'</h6><p style="font-size:10px;margin:0px;font-weight:600;">From :- '+value.route_From+'</p><p style="font-size:10px;margin:0px;font-weight:600;">To :- '+value.route_To+'</p></div><div class="col-md-5 col-sm-5"><div style="width:100%;"><p style="float:left;text-align:left;width:50%;font-size:10px;margin:0px;font-weight:600;margin-top:0px;">'+date_create+'</p><p style="float:left;text-align:right;width:50%;font-size:10px;font-weight:600;margin-top:0px;">'+delivered_Date+'</p><div style="clear:both;"></div></div><div class="text-center m-auto" style="width:75%;height: 10px;position: relative;bottom: 25px;"><div class="p-1" style="width: 12px;border-radius: 15px;background: #268fff;height: 12px;position: relative;left: -5%;bottom: -9.5px;z-index: 1;"></div><div class="progress margin-auto" style="position: relative;height: 0.5rem;"><div class="progress-bar progress-bar-striped progress-bar-animated "style="width:'+value.event_Status+'%;background-size: 0.5rem 0.8rem;background-color:#43b54380;background-image: linear-gradient(45deg,rgba(255, 255, 255, 0.82) 25%,#000000c7 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);"></div></div><div class="p-1" style="width: 12px;border-radius: 15px;background: #268fff;height: 12px;position: relative;left: 96%;bottom: 9px;z-index: 0;"></div><div style="font-size: 12px;font-weight: 600;height: 0px;position: relative;bottom: 5px;width: 100%;text-align: center;">Status: <span style="font-size:'+font_size+'px;">'+value.delivered_Status+'</span></div></div><div class="clear:both;"></div></div><div class="col-md-3 col-sm-3 text-center p-0 imagenotif"><img src="./images/'+alertss+'" style="width:16px;height:16px;margin-top:20px;" class="notif"></div><div style="clear:both"></div></div>';
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
	            text:"Live Chart with dataPoints from External JSON"
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
  	
//  	alert(route_From);alert(route_To);alert(getPointsWays);

		var attr_val = $('.two_view_'+shipment_Id).attr("onclick");
		
  	$("#bottom_map").hide();
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
			
			$(".shortsMenu_update_complete").html('<button class="btn btn-color" onclick="javascript:updateEvent(\''+shipment_Id+'\',\''+partner_From[0]+'\',\''+shipment_Num[0]+'\',\''+device_Id[0]+'\');" style=" font-size:11px;margin:2px;width: 117px;height: 22px;line-height: 10px;">Update Event</button><button class="btn btn-color"  onclick="javascript:CompleteShipment(\''+shipment_Id+'\',\''+partner_From[0]+'\',\''+shipment_Num[0]+'\',\''+device_Id[0]+'\');" style=" font-size:11px;margin:2px;width: 117px;height: 22px;line-height: 10px;">Complete Shipment</button><a href="Dashboard.jsp"><button class="btn btn-color" style=" font-size:11px;margin:2px;width: 55.5px;float:left;height: 22px;line-height: 10px;">Exit</button></a><button class="btn btn-color" style=" font-size:11px;margin:2px;width: 55.5px;float:left;height: 22px;line-height: 10px;">Share</button><span style="clear:both;"></span>');
			
			
			
			
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
	 			             		//var val_data = '<div class=""><div><span>Altitude :- </span><span>'+val.altitude+'</span></div><div><span>Battery :- </span><span>'+val.bat+'</span></div><div><span>Distance :- </span><span>'+val.distance+'</span></div><div><span>Latitude :- </span><span>'+val.latitude+'</span></div><div><span>Longitude :- </span><span>'+val.longitude+'</span></div><div><span>Report Type :- </span><span>'+val.report_type+'</span></div><div><span>Sensor Id :- </span><span>'+val.sensor_id+'</span></div><div><span>Speed :- </span><span>'+val.speed+'</span></div><div><span>UTC TIME :- </span><span>'+val.utc+'</span></div><div><span>Internal Temperature :- </span><span>'+val.internal_temperature+'</span></div><div><span>Mode of Transport :- </span><span>'+val.mode_of_Transport+'</span></div><div><span>Message Number :- </span><span>'+val.message_Number+'</span></div><div><span>Temp Measurment :- </span><span>'+val.temp_Measurment+'</span></div><div><span>Shipment Id :- </span><span>'+val.shipment_Id+'</span></div><div><span>Shipment Num :- </span><span>'+val.shipment_Num+'</span></div><div><span>Device Id :- </span><span>'+val.device_Id+'</span></div><div><span>Event Name :- </span><span>'+val.event_Name+'</span></div><div><span>Event S.No :- </span><span>'+val.event_SNo+'</span></div></div>';
	 			             		var val_data = val.altitude;
	 		     						var tabletr = '<tr ondblclick="javascript:TableViewDataTranscation(\''+val_data+'\');"><td>'+val.shipment_Num+'</td><td>'+val.device_Id+'</td><td style="font-size:'+font_size+'px;">'+val.event_Name+'</td><td>'+val.report_type+'</td><td>'+val.internal_temperature+'<sup style="font-size:8px;font-weight:bold;">0</sup>'+val.temp_Measurment+'</td><td>'+val.bat+'</td><td>'+val.mode_of_Transport+'</td></tr>';
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
//  			  alert(value.mode_of_Transport);
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
  

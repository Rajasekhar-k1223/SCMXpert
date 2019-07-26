 $(function() {
        	 $('#bottom_map').scroll(function(){
        		 if ($(this).scrollTop() >= 10) {
        			 
        		 }
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
        	 $(".dashboard_page").hide();
           	 var bpval = $("#bpi_idchange").val();
    		 var scmval = $("#scmid").val();
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
             $("#backgroundBlur,.close,#CancelBtn").on("click",function(){
             	$("#backgroundBlur,.showtablelist").hide();
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

function seachfilter()
      {

	   	var from = $("#from").val().trim();
      	var to = $("#to").val().trim();
      	var goods = $("#selectgoods").val();
      	var date = $("#datepicker-13").val();
      	var delivery = $("#delivery").val();
      	var refer = $("#reference").val();
      	var device = $("#devices").val();
      	var bpval = $("#bpi_idchange").val();
 			 var scmval = $("#scmid").val();
    	  //$(".live_shipments").empty();
    	  
    	  
    	  	$('.live_shipments_list,#draftTableaa>tbody>tr').hide();
    	    $('.live_shipments_list,#draftTableaa>tbody>tr').each(function(){
    	       if($(this).text().toUpperCase().indexOf(from.toUpperCase() || to.toUpperCase() || goods || date || delivery || refer || device || delivery) != -1){
    	           $(this).show();
    	       }
    	    });
      }
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
      		var shipment_device = '<div class="p-1 m-1 live_shipments_list row goods_'+value.goods_Desc+' shipdate_'+date_string+' delivery_'+value.shipment_Num+' device_'+value.device_Id+' reference_'+value.type_Of_Reference+' dept_'+value.departments+' one_'+value.device_Id+' two_list two_view_'+value.shipment_Id+' from_'+value.route_From.toLowerCase()+' to_'+value.route_To.toLowerCase()+'" onclick="javascript:showdatadialogbox(\''+value.shipment_Id+'\',\''+value.shipment_Num+'\',\''+value.device_Id+'\',\''+value.created_Date+'\',\''+value.route_From+'\',\''+value.route_To+'\','+getPointsWays+');" style="width:98%;border:1px solid black;border-radius:3px;min-height:60px;cursor:pointer;"  ><div style="display:none;">'+value.device_Id+'</div><div style="display:none;">'+value.route_From+'</div><div style="display:none;">'+value.route_To+'</div><div style="display:none;">'+value.goods_Desc+'</div><div style="display:none;">'+value.shipment_Num+'</div><div style="display:none;">'+value.type_Of_Reference+'</div><div class="from_coordinates_'+value.route_From.toLowerCase()+' to_coordinates_'+value.route_To.toLowerCase()+' device_coordinates_'+value.device_Id+'" style="display:none;">'+value.wayPoints[var_length-1]+'</div><div class="col-md-4 col-sm-4"><h6 class="m-0">'+value.shipment_Id+'</h6><p style="font-size:10px;margin:0px;font-weight:600;">From :- '+value.route_From+'</p><p style="font-size:10px;margin:0px;font-weight:600;">To :- '+value.route_To+'</p></div><div class="col-md-5 col-sm-5"><div style="width:100%;"><p style="float:left;text-align:left;width:50%;font-size:10px;margin:0px;font-weight:600;margin-top:0px;">'+date_create+'</p><p style="float:left;text-align:right;width:50%;font-size:10px;font-weight:600;margin-top:0px;">'+delivered_Date+'</p><div style="clear:both;"></div></div><div class="text-center m-auto" style="width:75%;height: 10px;position: relative;bottom: 25px;"><div class="p-1 points-dots"></div><div class="progress margin-auto" style="position: relative;height: 0.5rem;"><div class="progress-bar progress-bar-striped progress-bar-animated "style="width:'+value.event_Status+'%;background-size: 0.5rem 0.8rem;background-color:#43b54380;background-image: linear-gradient(45deg,rgba(255, 255, 255, 0.82) 25%,#797676c7 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);"></div></div><div class="p-1 points-dots2"></div><div style="font-size: 12px;font-weight: 600;height: 0px;position: relative;bottom: 5px;width: 100%;text-align: center;">Status: <span style="font-size:'+font_size+'px;">'+value.delivered_Status+'</span></div></div><div class="clear:both;"></div></div><div class="col-md-3 col-sm-3 text-center p-0 imagenotif"><img src="./images/'+alertss+'" style="width:16px;height:16px;margin-top:20px;" class="notif"></div><div style="clear:both"></div></div>';
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
      						console.log(event_SNo_c+','+val.event_SNo);
      						var status_length = val.event_Name.length;
			             		if(status_length > 15)
			             			{
			             				var font_size = "10";
			             			}else{
			             				var font_size = "12";
			             			}
          						var tabletr = "<tr><td style='display:none;'>"+value.goods_Desc+"</td><td style='display:none;'>"+value.route_From+"</td><td style='display:none;'>"+value.route_To+"</td><td>"+val.shipment_Id+"</td><td>"+val.shipment_Num+"</td><td>"+val.device_Id+"</td><td style='font-size:"+font_size+"px;'>"+val.event_Name+"</td><td>"+val.report_type+"</td><td>"+val.internal_temperature+"<sup style='font-size:8px;font-weight:bold;'>0</sup>"+val.temp_Measurment+"</td><td>"+val.bat+"</td><td>"+val.mode_of_Transport+"</td></tr>";
                  				$('#draftTableaa>tbody').append(tabletr); 

      						}
      					
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
 	$(".info").hide();
 	$(".showmap").empty();
		var attr_val = $('.two_view_'+shipment_Id).attr("onclick");
 	$("#bottom_map,.download").hide();
 	$("#mapShowInfoTab").removeAttr("onclick");
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
 	 window.onload = getgraph(dataPoints);
		});
		$.getJSON("http://localhost:8080/SCMXPert/getShipmentTransactionDeviceData/"+shipment_Id,function(filters){
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
			});
			$(".shortsMenu_update_complete").html('<button class="btn bg-color btn-head" onclick="javascript:updateEvent(\''+shipment_Id+'\',\''+partner_From[0]+'\',\''+shipment_Num[0]+'\',\''+device_Id[0]+'\');" style=" font-size:11px;margin:2px;width: 130px;height: 25px;line-height: 5px;">Update Event</button><button class="btn bg-color btn-head"  onclick="javascript:CompleteShipment(\''+shipment_Id+'\',\''+partner_From[0]+'\',\''+shipment_Num[0]+'\',\''+device_Id[0]+'\');" style=" font-size:11px;margin:2px;width: 130px;height: 25px;line-height: 5px;">Complete Shipment</button><a href="Dashboard.jsp"><button class="btn bg-color btn-head" style=" font-size:11px;margin:2px;width: 64px;float:left;height: 25px;line-height: 5px;">Exit</button></a><button class="btn bg-color btn-head" style=" font-size:11px;margin:2px;width: 64px;float:left;height: 25px;line-height: 5px;">Share</button><span style="clear:both;"></span>');
			event_sNO.sort(function(a, b){return a-b});
			for(i=0;i<event_sNO.length;i++)
				{
					var event_num = event_sNO[i];
	 				$.each(filters,function(kew,val){
	 		 					if(event_num == val.event_SNo)
	 		 						{
	 		 						var status_length = val.event_Name.length;
	 			             		if(status_length > 15)
	 			             			{
	 			             				var font_size = "10";
	 			             			}else{
	 			             				var font_size = "12";
	 			             			}
	 			             		var dateTime = new Date( Date.parse(val.utc));
	 		                    	var date_Time = dateTime.toLocaleString();
	 			             		var val_data = val.altitude;
	 		     						var tabletr = '<tr ondblclick="javascript:TableViewDataTranscation(\''+val_data+'\');"><td class="ShipmentNumber">'+val.shipment_Num+'</td><td class="">'+val.device_Id+'</td><td style="font-size:'+font_size+'px;">'+val.event_Name+'</td><td>'+val.partner_From+'</td><td>'+val.internal_temperature+'<sup style="font-size:8px;font-weight:bold;">0</sup>'+val.temp_Measurment+'</td><td>'+date_Time+'</td><td>'+val.mode_of_Transport+'</td></tr>';
	 		             				$('#shipmentdatalistshow>tbody').append(tabletr); 
	 		 						} 
	 		 				});
				}
			var shipment = $(".two_view_"+shipment_Id).html();
			$(".shipment_name").html("<div class='row'>"+shipment+"</div>");
			$("#shipmentdatalistshow").DataTable();
		});
	$("#addChangeFilterList").attr("onclick","javascript:showSelectTableValues('"+shipment_Id+"');");
 }
 function updateEvent(shp_id,bp_id,shipment_Num,device_Id)
 {
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
	 	$('.showviewdata').show();
 	$("body").css("overflow","hidden");
 	$("#backgroundBlur").show();
 }

 function showdetailslist(shipment_Id,device_id,utc_time,from,to,viewpoints)
 {
 	$(".info").hide();
 	$('.live_shipments_list ').removeClass("showlistcard");
 	$(".two_view_"+shipment_Id).addClass("showlistcard");
 	  $.getJSON("http://localhost:8080/SCMXPert/getShipmentTransactionDeviceData/"+shipment_Id,function(filter){
 		  $('#draftTable>tbody').empty();
 		  $.each(filter,function(key,value){
 			  var tabletr = "<tr><td>"+value.shipment_Num+"</td><td>"+value.device_Id+"</td><td>"+value.event_Name+"</td><td>"+value.report_type+"</td><td>"+value.internal_temperature+"<sup style='font-size:8px;font-weight:bold;'>0</sup>"+value.temp_Measurment+"</td><td>"+value.bat+"</td><td>"+value.mode_of_Transport+"</td></tr>";
 			  $('#draftTable>tbody').append(tabletr);
 		  });
 		  
 	  });	 
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
					var goodlist = [];
					$.each(value,function(keys,values){
						if($.inArray(values.goods_Item, goodlist) != -1)
							{$(this).remove();}else{
								goodlist.push(values.goods_Item);
							}
					});
					 $.each(goodlist,function(key,value){
						var select_device_Id_items = '<option value="'+value+'">'+value+'</option>';
						$("#selectgoods").append(select_device_Id_items)
					}); 
				}
			});
      });
	  /***   Get Data for Shipments through web services  ***  End***/
		liveshipments_list(scmid,bpid);
 
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
function showSelectTableValues(shipmentid)
{
$(".showtablelist,#backgroundBlur").show();
$("#SaveFiltersListBtn").attr("onclick","javascript:SaveFiltersListBtn('"+shipmentid+"');");
}
function SaveFiltersListBtn(shipmentid)
{
var selHeader = $("input[name='filterList']:checked").map(function(_, el) {
 return $(el).next("label").text();
}).get();
var selbody = $("input[name='filterList']:checked").map(function(_, el) {
 return $(el).val();
}).get();
//alert(selbody);
$('#shipmentdatalistshow>tbody').empty();
$.getJSON("http://localhost:8080/SCMXPert/getShipmentTransactionDeviceData/"+shipmentid,function(filters){
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
		});
		event_sNO.sort(function(a, b){return a-b});
		for(i=0;i<event_sNO.length;i++)
			{
				var event_num = event_sNO[i];
				$.each(filters,function(kew,val){
		 					if(event_num == val.event_SNo)
		 						{
		 						var status_length = val.event_Name.length;
			             		if(status_length > 15)
			             			{
			             				var font_size = "10";
			             			}else{
			             				var font_size = "12";
			             			}
			             		var dateTime = new Date( Date.parse(val.utc));
		                    	var date_Time = dateTime.toLocaleString();
			             		var val_data = val.altitude;
		             				var tableHeader = []
		             				$.each(selHeader,function(key,headervalue){
		             					var tableHeadervalue = "<th>"+headervalue+"</th>";
		             					tableHeader.push(tableHeadervalue);
		             				});
		             				var tablebody = []
		             				$.each(selbody,function(key,bodyvalue){
		             					$.each(val,function(k,v){
		             						if(k == bodyvalue){
		             							var tablebodyvalue = "<td>"+v+"</td>";
		 		             					tablebody.push(tablebodyvalue);
		             						}
		             					})
		             				});
									$('#shipmentdatalistshow>thead').empty();
		             				$('#shipmentdatalistshow>thead').html('<tr>'+tableHeader+'<th> <span id="addChangeFilterList"><i class="fa fa-plus-circle"></i></span></th></tr>'); 
		             				$('#shipmentdatalistshow>tbody').append('<tr>'+tablebody+'</tr>');
							} 
		 				});
			}
		var shipment = $(".two_view_"+shipmentid).html();
		$(".shipment_name").html("<div class='row'>"+shipment+"</div>");
		$("#addChangeFilterList").attr("onclick","javascript:showSelectTableValues('"+shipmentid+"');");

	});
$(".showtablelist,#backgroundBlur").hide();	
}
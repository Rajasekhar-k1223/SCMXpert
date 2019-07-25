 $(function() {
	 var Cust_Id = $("#Cust_Id").val();
	 //getAllDevices();
     var addDeviceCountList = $.cookie("DevicesCount")+' Devices';
     //var listDevice = $.cookie("DevicesList");
     var first = $(location).attr('pathname');
	    first.indexOf(1);
	    first.toLowerCase();
	    first = first.split("/")[2];
	    if(first == "CreateDeviceTransfer.jsp")
	    	{
	    	   	var data = $.cookie("DevicesList");
		        var arr = data.split(',');
		        $.each(arr, function(i, obj){
		       	 $('#listOfDevices').append('<option value="'+arr[i]+'">'+arr[i]+'</option>');
		        });
	    	}
     

     
    /* $.each(listDevice,function(key,value){
    	 alert(value);
     });*/
     $("#numofDev").val(addDeviceCountList);
     //$("#bp_name").val($.cookie("DevicesCount"));
	// $("#deviceAvalibletable").DataTable();

	 
 });
 
 function getAllDevices()
 {
	 $("#deviceAvalibletable>tbody").empty();
	 $.getJSON("http://localhost:8080/SCMXPert/getAllDevices",function(response){
		 $.each(response,function(key,value){
			 $("#location").append('<option value="'+value.location+'">'+value.location+'</option>');
			 $("#destination").append('<option value="'+value.toDestination+'">'+value.toDestination+'</option>');
			 $("#Status").append('<option value="'+value.deviceStatus+'">'+value.deviceStatus+'</option>');
			 $("#goodType").append('<option value="'+value.goodsType+'">'+value.goodsType+'</option>');
			 //$("#ShipNumber").append(value.location);
			 $("#transfId").append('<option value="'+value.internalTransferId+'">'+value.internalTransferId+'</option>');
			 if(value.deviceStatus == "Available"){
				 var tableVales = '<tr id="checked_'+value.deviceId+'"><td><input type="checkbox" class="checkbox" style="padding:0px;margin:0px;width:14px;" value="'+value.deviceId+'" name="tablecheckbox"/></td><td>'+value.deviceId+'</td><td>'+value.deviceStatus+'</td><td>'+value.location+'</td><td>'+value.customerId+'</td><td>'+value.bpId+'</td><td>'+value.goodsType+'</td><td>'+value.toDestination+'</td><td id="interid_'+value.deviceId+'">'+value.internalTransferId+'</td><td>'+value.trackingNumber+'</td><td>'+value.battery+'</td></tr>';
				 $("#deviceAvalibletable>tbody").append(tableVales);
			 }else{
				 var tableVales = '<tr id="checked_'+value.deviceId+'"><td></td><td>'+value.deviceId+'</td><td>'+value.deviceStatus+'</td><td>'+value.location+'</td><td>'+value.customerId+'</td><td>'+value.bpId+'</td><td>'+value.goodsType+'</td><td>'+value.toDestination+'</td><td id="interid_'+value.deviceId+'">'+value.internalTransferId+'</td><td>'+value.trackingNumber+'</td><td>'+value.battery+'</td></tr>';
				 $("#deviceAvalibletable>tbody").append(tableVales);
			 }
			 
			/* alert(value.location+', '+value.toDestination+', '+value.deviceStatus+' '+value.goodsType+', '+value.internalTransferId);
			 $.each(value,function(k,val){
				 
			
	
			 });*/
		 });
	 });
	 
 }
 function InUsegetAllDevices()
 {
	 $.getJSON("http://localhost:8080/SCMXPert/getINUseDevices",function(response){
		 var routeslist = [];
		 var routeslistD = [];
		 var geolocation = [];
		 $.each(response,function(keys,values){
			 var geoloc = values.location;
			 geolocation.push(geoloc);
				if($.inArray(values.location, routeslist) != -1)
					{$(this).remove();}else{
						routeslist.push(values.location);
					}
				if($.inArray(values.toDestination, routeslist) != -1)
				{$(this).remove();}else{
					routeslistD.push(values.toDestination);
				}
		});
		 //getlocations(geolocation);
		 $.each(routeslist,function(key,value){
				var select_device_Id_items = '<option value="'+value+'">'+value+'</option>';
				$("#route_name_from_InUse").append(select_device_Id_items)
			});
		 $.each(routeslistD,function(key,value){
				var select_device_Id_items = '<option value="'+value+'">'+value+'</option>';
				$("#route_name_to_InUse").append(select_device_Id_items)
			});
		 $.each(response,function(key,value){
			 //$("#route_name_from").append('<option value="'+value.location+'">'+value.location+'</option>');
			// $("#route_name_to").append('<option value="'+value.toDestination+'">'+value.toDestination+'</option>');
			 $("#Status").append('<option value="'+value.deviceStatus+'">'+value.deviceStatus+'</option>');
			 $("#goodType").append('<option value="'+value.goodsType+'">'+value.goodsType+'</option>');
			 $("#deviceId").append('<option value="'+value.deviceId+'">'+value.deviceId+'</option>');
			 //$("#ShipNumber").append(value.location);
			 $("#transfId").append('<option value="'+value.internalTransferId+'">'+value.internalTransferId+'</option>');
			 var theDate = new Date( Date.parse(value.time));
          	var date_create = theDate.toLocaleString();
			 var tableVales = '<tr id="checked_'+value.deviceId+'"><td>'+value.deviceId+'</td><td>'+value.customerId+'</td><td>'+value.bpId+'</td><td></td><td>'+value.fromOrigin+'</td><td>'+value.toDestination+'</td><td>'+value.goodsType+'</td><td>'+date_create+'</td><td>'+value.deviceStatus+'</td><td>'+value.location+'</td><td>'+value.battery+'</td></tr>';
			 $("#deviceInUsetable>tbody").append(tableVales);
			/* alert(value.location+', '+value.toDestination+', '+value.deviceStatus+' '+value.goodsType+', '+value.internalTransferId);
			 $.each(value,function(k,val){
				 
			
	
			 });*/
		 });
	 });
	 
 }
 
 
 function createDevice()
 {
	 
	 /*var values = new Array();

	 $.each($("input[name='tablecheckbox']:checked"),
	        function () {
		 		var checkedvalues = $("#checked_"+$(this).val()).html();
		 		$("#").append(checkedvalues);
		 		
//	             values.push($(this).text());
	        });

	    //alert("val---" + values.join(", "));
	 var tablehtml = '<table id="avalibletabledata" style="d"><thead><tr><th></th><th>Device ID</th><th>Status</th><th>Device Location</th><th>Customer</th><th>Business Partner</th><th>Goods Type</th><th>Destination</th><th>Internal Transfer ID</th><th>Tracking Number</th><th>Battery %</th></tr></thead><tbody id="availabeltabledata"></tbody></table>'
	 console.log(values.join(", "));
	 return false;*/
	 var DevicesCount = $('#tabledata td input[name="tablecheckbox"]').filter(':checked').length;
	 var DevicesList = [];
	 var intenalid = [];
     $.each($("input[name='tablecheckbox']:checked"), function(){            
    	 DevicesList.push($(this).val());
    	 var internalid = $("#interid_"+$(this).val()).text();
    	 intenalid.push(internalid);
    	 
     });
   var error = document.getElementById("error");
    var unique = intenalid.filter(function(itm, i, intenalid) {
        return i == intenalid.indexOf(itm);
    });
    if(unique.length > 1)
    	{

    		error.innerHTML = "Your Selected Different Internal Ids Select Same Internal Id";
    		return false;
    	}else{
    		error.innerHTML = "";
    		 $.cookie("Internalid",unique);
    	     $.cookie("DevicesList",DevicesList);
    	     $.cookie("DevicesCount",DevicesCount);
    		 window.location.href = "CreateDeviceTransfer.jsp";	
    	}
     
 }
 function filtertabledata(value)
 {
	 $("#tabledata tr").filter(function(){
		 var valala = $(this).toggle($(this).text().indexOf(value) > 1)
	 });
	 
	 
 }
 function createDevices()
 {
		//var table = $('#inboxesvalues').tableToJSON();
	 	var internalTransferId = $("#internalTransferId").val();
		var Cust_Id = $("#Cust_Id").val();
		var bp_name = $("#bp_name").val();
		var numofDevices = $("#numofDev").val();
		var event_from = $("#event_from").val();
		var event_to = $("#event_to").val();
		var trackingNo = $("#trackingNo").val();
		var courierCompList = $("#courierCompList").val();
		var transDesc = $("#transDesc").val();
		var event_partner_from = $("#event_partner_from").val();
		var transferDate = $("#transferDate").val();
		var expected_date = $("#expected_date").val();
		var destinationAddress = $("#destinationAddress").val();
	     var data = $.cookie("DevicesList");
	     var arr = data.split(',');
	     $.each(arr, function(i, obj){
	    		var json_value = [{  "customerId":Cust_Id,
						"businessId":bp_name,
						"internalTransferId":internalTransferId,
						"trackingNumber":trackingNo,
						"courrierCompany":courierCompList,
						"transferDescription":transDesc,
						"fromOrigin":event_from,
						"toDestination":event_to,
						"receivingPartner":event_partner_from,
						"destinationAddress":destinationAddress,
						"dateOfTransfer":transferDate,
						"expectedDate":expected_date,
						"numberOfDevices":numofDevices,
						"deviceId":arr[i]
						
					}];
/*	alert(JSON.stringify(json_value));
	console.log(JSON.stringify(json_value));*/
    var url = "http://localhost:8080/SCMXPert/createDeviceTransfer";
	$.ajax({
       	 type:"post",
		 url:url,
		 headers: { Accept : "application/json",
					'Content-Type': "application/json" 
			 		}, 
		 data: JSON.stringify(json_value),
	    success: function(data) {
	    	alert(data);
	    	$("#backgroundBlur").show();
	    	$(".showviewdata").show().html('<div class="alert alert-success" role="alert">Successful Created</div>');
	    	//window.location.href = "Dashboard.jsp";
	    },
	});	 

	     });
		
 }
 function createReceiveDevices()
 {
		//var table = $('#inboxesvalues').tableToJSON();
	 	var internalTransferId = $("#internalTransferId").val();
		var Cust_Id = $("#Cust_Id").val();
		var bp_name = $("#bp_name").val();
		var numofDevices = $("#numofDev").val();
		var event_from = $("#event_from").val();
		var event_to = $("#event_to").val();
		var trackingNo = $("#trackingNo").val();
		var courierCompList = $("#courierCompList").val();
		var transDesc = $("#transDesc").val();
		var event_partner_from = $("#event_partner_from").val();
		var transferDate = $("#transferDate").val();
		var expected_date = $("#expected_date").val();
		var destinationAddress = $("#destinationAddress").val();
		var personReceiving = $("#personReceiving").val();
	     var data = $.cookie("DevicesList");
	     var arr = data.split(',');
	     $.each(arr, function(i, obj){
	    		var json_value = [{  
						"internalTransferId":internalTransferId,
						"trackingNumber":trackingNo,
						"courrierCompany":courierCompList,
						"transferDescription":transDesc,
						"fromOrigin":event_from,
						"toDestination":event_to,
						"receivingPartner":event_partner_from,
						"destinationAddress":destinationAddress,
						"dateOfTransfer":transferDate,
						"expectedDate":expected_date,
						"numberOfDevices":numofDevices,
						"deviceId":arr[i],
						"personReceiving":personReceiving
						
					}];
/*	alert(JSON.stringify(json_value));
	console.log(JSON.stringify(json_value));*/
    var url = "http://localhost:8080/SCMXPert/receiceDeviceTransfer";
	$.ajax({
       	 type:"post",
		 url:url,
		 headers: { Accept : "application/json",
					'Content-Type': "application/json" 
			 		}, 
		 data: JSON.stringify(json_value),
	    success: function(data) {
	    	alert(data);
	    	$("#backgroundBlur").show();
	    	$(".showviewdata").show().html('<div class="alert alert-success" role="alert">Successful Created</div>');
	    	//window.location.href = "Dashboard.jsp";
	    },
	});	 

	     });
		
 }

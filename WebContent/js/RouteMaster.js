 $(function() {
	 var bp_name = $("#bp_name").val();
	 var Cust_Id = $("#Cust_Id").val();
	 getbp_id(bp_name);getRouteId(Cust_Id);
	 getAllCountriesStates();
	 var optionValues =[];
	 $('#selectvalues option').each(function(){
	    if($.inArray(this.value, optionValues) >-1){
	       $(this).remove()
	    }else{
	       optionValues.push(this.value);
	    }
	 });
	 
 });
function getRouteDEtails(RouteMasterGetRoute)
{
	$.getJSON(RouteMasterGetRoute,function(response){
		$.each(response,function(a,b){
			var RouteOption = '<option value="'+b.route_Id+'">'+b.description+'</option>';
			$("#event_id_val").append(RouteOption);
		});
	});
}
function checkAlreadyRouteDesc(RouteMasterGetRoute,value)
{
	
}
function RouteDetailsWithId(Route_id,RouteMasterGetRoute)
{
	if(Route_id != ''){
		$.getJSON(RouteMasterGetRoute,function(response){
			$.each(response,function(a,b){
				if(b.route_Id == Route_id)
					{
					$("#createEvent").hide();
					$("#updateEvent").show();
						$("#event_type_val").val(b.route_Id);
						$("#route_name_from").val(b.from);
						$("#route_name_to").val(b.to);
						$("#event_pri_mode").val(b.primary_Mode_Of_Transport);
						$("#event_inco").val(b.inco_Term);
						var val = b.std_Duration;
						var res = val.split(" ");
						$("#event_std_dur").val(res[0]);
						$("#days_months").val(res[1]);						
						$("#event_description").val(b.description);
						$("#cust_route_id").val(b.custRouteId);
					}
			});
		});
	}else{
		var Cust_Id = $("#Cust_Id").val();
		getRouteId(Cust_Id)
		$("#createEvent").show();
		$("#updateEvent").hide();
		$("#event_type_val").val('');
		$("#route_name_from").val('');
		$("#route_name_to").val('');
		$("#event_pri_mode").val('');
		$("#event_inco").val('');
		$("#event_std_dur").val('');
		$("#event_description").val('');
		$("#cust_route_id").val('');
	}

}
function ship_from()
{
	var event_from = $("#route_name_from").val();
	$("#event_to").children('option[value="'+event_from+'"]').css('display','none');
	var event_to = $("#route_name_to").val();
	var event_pri_mode = $("#event_pri_mode").val();
	var event_inco = $("#event_inco").val();
	$("#event_description").val(event_from+' to '+event_to+', mode by '+event_pri_mode+','+event_inco);
}
function ship_to()
{
	var event_from = $("#route_name_from").val();
	var event_to = $("#route_name_to").val();
	var event_pri_mode = $("#event_pri_mode").val();
	var event_inco = $("#event_inco").val();
	$("#event_description").val(event_from+' to '+event_to+', mode by '+event_pri_mode+','+event_inco);
}
function pri_mode()
{
	var event_from = $("#route_name_from").val();
	var event_to = $("#route_name_to").val();
	var event_pri_mode = $("#event_pri_mode").val();
	var event_inco = $("#event_inco").val();
	$("#event_description").val(event_from+' to '+event_to+', mode by '+event_pri_mode+','+event_inco);
}
function event_inco()
{
	var event_from = $("#route_name_from").val();
	var event_to = $("#route_name_to").val();
	var event_pri_mode = $("#event_pri_mode").val();
	var event_inco = $("#event_inco").val();
	$("#event_description").val(event_from+' to '+event_to+', mode by '+event_pri_mode+','+event_inco);
}
function createRoute()
{
	
	var table = $('#inboxesvalues').tableToJSON();
	var Cust_Id = $("#Cust_Id").val();
	var bp_name = $("#bp_name").val();
	var event_type_val = $("#event_type_val").val();
	var event_from = $("#route_name_from").val();
	var event_to = $("#route_name_to").val();
	var event_pri_mode = $("#event_pri_mode").val();
	var event_inco = $("#event_inco").val();
	var event_std_dur = $("#event_std_dur").val();
	var days_months = $("#days_months").val();
	var event_route_status = $("#event_route_status").val();
	var event_description = $("#event_description").val();
	var cust_route_id = $("#cust_route_id").val();
	var error = document.getElementById("error");
	
	if(event_from == "")
		{
		var text = "Enter Route From";
		error.innerHTML = text;
		$("#route_name_from").focus().css("border","1px solid red");
		return false;
		}
	if(event_to == "")
	{
	var text = "Enter Route To";
	error.innerHTML = text;
	$("#route_name_to").focus().css("border","1px solid red");
	return false;
	}

	if(event_pri_mode == "")
	{
	var text = "Select Primary Mode";
	error.innerHTML = text;
	$("#event_pri_mode").focus().css("border","1px solid red");
	return false;
	}

	if(event_inco == "")
	{
	var text = "Select Inco Terms";
	error.innerHTML = text;
	$("#event_inco").focus().css("border","1px solid red");
	return false;
	}

	if(event_std_dur == "")
	{
	var text = "Enter Duration Number";
	error.innerHTML = text;
	$("#event_std_dur").focus().css("border","1px solid red");
	return false;
	}
	if(cust_route_id == "")
	{
	var text = "Enter Customer Route ID";
	error.innerHTML = text;
	$("#cust_route_id").focus().css("border","1px solid red");
	return false;
	}

	
	
	var json_value = {  "customerId":Cust_Id,
						"businessId":bp_name,
						"route_Id":event_type_val,
						"shipFrom":event_from,
						"shipTo":event_to,
						"primaryMode":event_pri_mode,
						"incoTerms":event_inco,
						"standradDuration":event_std_dur+' '+days_months,
						"routeStatus":event_route_status,
						"description":event_description,
						"custRouteId":cust_route_id,
						"default_Business_Partners_And_Events":table
					};
    var url = "http://localhost:8080/SCMXPert/addNewRoute";
	$.ajax({
       	 type:"post",
		 url:url,
		 headers: { Accept : "application/json",
					'Content-Type': "application/json" 
			 		}, 
		 data: JSON.stringify(json_value),
	    success: function(data) {
	    	$("#backgroundBlur").show();
	    	$(".showviewdata").show().html('<div class="alert alert-success" role="alert">Route Successful Created  <a href="Dashboard.jsp" class="alert-link text-primary" style="text-decoration-line: underline;text-decoration-style: solid;">Move to Dashboard</a>.</div>');
	    	
	    	var RouteMasterGetRoute = "http://localhost:8080/SCMXPert/getRoutes/"+Cust_Id;
	    	var Route_id = '';
	    	RouteDetailsWithId(Route_id,RouteMasterGetRoute);
	    	//window.location.href = "Dashboard.jsp";
	    },
	}); 
}

function UpdateRoute()
{
	
	var table = $('#inboxesvalues').tableToJSON();
	var Cust_Id = $("#Cust_Id").val();
	var bp_name = $("#bp_name").val();
	var event_type_val = $("#event_type_val").val();
	var event_from = $("#route_name_from").val();
	var event_to = $("#route_name_to").val();
	var event_pri_mode = $("#event_pri_mode").val();
	var event_inco = $("#event_inco").val();
	var event_std_dur = $("#event_std_dur").val();
	var days_months = $("#days_months").val();
	var event_route_status = $("#event_route_status").val();
	var event_description = $("#event_description").val();
	var cust_route_id = $("#cust_route_id").val();
	var json_value = {  "customerId":Cust_Id,
						"businessId":bp_name,
						"route_Id":event_type_val,
						"shipFrom":event_from,
						"shipTo":event_to,
						"primaryMode":event_pri_mode,
						"incoTerms":event_inco,
						"standradDuration":event_std_dur+' '+days_months,
						"routeStatus":event_route_status,
						"description":event_description,
						"custRouteId":cust_route_id,
						"default_Business_Partners_And_Events":table
					};
    var url = "http://localhost:8080/SCMXPert/updateRoute";
	$.ajax({
       	 type:"post",
		 url:url,
		 headers: { Accept : "application/json",
					'Content-Type': "application/json" 
			 		}, 
		 data: JSON.stringify(json_value),
	    success: function(data) {
	    	$("#backgroundBlur").show();
	    	$(".showviewdata").show().html('<div class="alert alert-success" role="alert">Route Update <strong>Successfully!</strong> <a href="Dashboard.jsp" class="alert-link text-primary" style="text-decoration-line: underline;text-decoration-style: solid;">Move to Dashboard</a>.</div>');
	    	
	    	var RouteMasterGetRoute = "http://localhost:8080/SCMXPert/getRoutes/"+Cust_Id;
	    	var Route_id = '';
	    	$("#event_id_val").val('');
	    	RouteDetailsWithId(Route_id,RouteMasterGetRoute);
	    	//window.location.href = "Dashboard.jsp";
	    },
	}); 
}
function addShipFrom()
{
	$(".AddEventBlock,.body_blur").show();
}
function addShipFromNew()
{
	var shipFrom = $("#shipFrom").val();
	$("#event_from").append('<option value="'+shipFrom+'">'+shipFrom+'</option>');
	$("#event_from").val(shipFrom);
	$("#shipFrom").val('');
	$(".body_blur,.addShipfromPop,.addShipToPop").hide();
}
function addShipFrom()
{
	$(".addShipfromPop,.body_blur").show();
}
function addShipTo()
{
	$(".addShipToPop,.body_blur").show();
}
function addShipFromNew()
{
	var shipFrom = $("#shipFrom").val();
	$("#route_name_from").append(shipFrom);
	$("#route_name_from").val(shipFrom);
	$("#shipFrom").val('');
	$(".body_blur,.addShipfromPop,.addShipToPop").hide();
}
function addShipToNew()
{
	var shipTo = $("#shipTo").val();
	$("#route_name_to").append(shipTo);
	$("#route_name_to").val(shipTo);
	$("#shipTo").val('');
	$(".body_blur,.addShipfromPop,.addShipToPop").hide();
}
function reset()
{
	
	var event_id_val = $("#event_id_val").val('');
	var event_type_val = $("#event_type_val").val('');
	var event_from = $("#event_from").val('');
	var event_to = $("#event_to").val('');
	var event_pri_mode = $("#event_pri_mode").val('');
	var event_inco = $("#event_inco").val('');
	var event_std_dur = $("#event_std_dur").val('');
	var event_route_status = $("#event_route_status").val('');
	var event_description = $("#event_description").val('');
}
function getRouteId(Cust_Id)
{
	$.getJSON("http://localhost:8080/SCMXPert/getIncrementedRoutedId/"+Cust_Id,function(response){
		$("#event_type_val").val(response);	
	});
	
}



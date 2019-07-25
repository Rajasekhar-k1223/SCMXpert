$(function() {
/*	var filtered=arr.filter(function(item){
	    return item.type=="ar";         
	});*/
	 //getAllCountriesStates();
	//listOfLocations();
	 getListOfBPIds();
	 $("#expected_date,#transferDate" ).datepicker();
	 /*$.getJSON("http://localhost:8080/SCMXPert/getRoutes/", function(e) {
		    console.log(e.ip);
		    alert(e.ip);
		});*/
	/* var first = $(location).attr('pathname');*/
		//first.indexOf(0);
		//first.toLowerCase();
		//first = first.split("/");
	/*	alert(first)*/
	 
	 var first = $(location).attr('pathname');
	    first.indexOf(1);
	    first.toLowerCase();
	    first = first.split("/")[2];
	    if(first == "InUse.jsp"){
	    	InUsegetAllDevices();
	    }
	    if(first == "Available.jsp"){
	    	getAllDevices();
	    }
$("#CancelEvent,.body_blur,.close,#backgroundBlur").on("click",function(){
	$(".body_blur,.AddEventBlock,.addShipfromPop,.addShipToPop,#showtablelist").hide();
	$("#shipFrom,#shipTo").val('');
	$(".showprelocationf,.showprelocationt").empty();
	$("body").css("overflow","auto");
});
$("#internalTransferId").val($.cookie("Internalid"));
$("#Cust_Id").val($.cookie("SCM_id"));
$("#bp_name").val($.cookie("BP_ID"));
var cust_id = $("#Cust_Id").val();
var bp_name = $("#bp_name").val();



var RouteMasterGetRoute = "http://localhost:8080/SCMXPert/getRoutes/"+cust_id;
$.getJSON(RouteMasterGetRoute,function(data){
	$.each(data,function(key,value){
		$("#route_name_from").append('<option value="'+value.from+'">'+value.from+'</option>');
		$("#route_name_to").append('<option value="'+value.to+'">'+value.to+'</option>');
	});
});
$("#event_id_val").on("change",function(){
	var Route_id = $(this).val();
	RouteDetailsWithId(Route_id,RouteMasterGetRoute);
});
/*var GoodsMasterGetRoute = "http://localhost:8080/SCMXPert/getGoods/"+cust_id;
$("#goods_id_vaal").on("change",function(){
	var Good_id = $("#goods_id_val").val();	
	GoodDetailsWithId(Good_id,GoodsMasterGetRoute);
	alert(Good_id);
});*/
$.getJSON( "http://localhost:8080/SCMXPert/getDDData/"+cust_id, function(data) { 
var routeslist = [];
	$("#internalshipment").val(data.internalShipmentId);
		$.each(data.business_Partner_Id,function(keys,values){
			if($.inArray(values, routeslist) != -1)
				{$(this).remove();}else{
					routeslist.push(values);
				}
	}); 
		$.each(routeslist,function(key,value){
			var select_device_Id_items = '<option value="'+value+'">'+value+'</option>';
			$("#event_partner_from,#selectvalues").append(select_device_Id_items)
		});
});
getRouteDEtails(RouteMasterGetRoute);
$("#route_name_from").keydown(function(){
	$(".showprelocationf").html('');
	var value = $(this).val();
	if(value.length > 1){
	var expression = new RegExp(value,"i");
	$.getJSON(RouteMasterGetRoute,function(data){
		$.each(data,function(key,value){
			if(value.from.search(expression) != -1)
				{
					$(".showprelocationf").append("<li style='list-style-type: none;text-indent: 10px;font-weight: 600;margin: 2px;background: #965664b8;color: #fff;padding: 2px 0px;border-radius: 2px'>"+value.from+"</li>")
				}
		});
	});
	}else{
		$(".showprelocationf").html('');
		}
});
$("#shipFrom").keydown(function(){
	//$(".showprelocationf").html('');
	var value_data = $(this).val();
	if(value_data.length > 1){
		$(".showprelocationf").html('');
	var expression = new RegExp(value_data,"i");
	$.getJSON(RouteMasterGetRoute,function(data){
		$.each(data,function(key,value){
//			alert(value.from);
			if(value.from.search(expression) != -1)
			//if(value.from == value_data)
				{
					$(".showprelocationf").append("<li style='list-style-type: none;text-indent: 10px;font-weight: 600;margin: 2px;background: #965664b8;color: #fff;padding: 2px 0px;border-radius: 2px'>"+value.from+"</li>")
				}
		});
	});
	}else{
		$(".showprelocationf").html('');
		}
});
$("#shipTo").keydown(function(){
	//$(".showprelocationf").html('');
	var value_data = $(this).val();
	if(value_data.length > 1){
		$(".showprelocationt").html('');
	var expression = new RegExp(value_data,"i");
	$.getJSON(RouteMasterGetRoute,function(data){
		$.each(data,function(key,value){
		//	alert(value.to);
			if(value.to.search(expression) != -1)
			//if(value.from == value_data)
				{
					$(".showprelocationt").append("<li style='list-style-type: none;text-indent: 10px;font-weight: 600;margin: 2px;background: #965664b8;color: #fff;padding: 2px 0px;border-radius: 2px'>"+value.to+"</li>")
				}
		});
	});
	}else{
		$(".showprelocationt").html('');
		}
});

 });

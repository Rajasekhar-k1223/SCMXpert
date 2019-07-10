 $(function() {
	 getAllGoods();
	 var Cust_Id = $("#Cust_Id").val();
	 goodsIdIncrement(Cust_Id);
	 var GoodsMasterGetRoute = "http://localhost:8080/SCMXPert/getGoods/"+Cust_Id;
	 $("#goods_id_vaal").on("change",function(){
	 	var Good_id = $(this).val();	
	 	GoodDetailsWithId(Good_id,GoodsMasterGetRoute,Cust_Id);
	 	 
	 });
 });
 
function addGoodsType()
{
	$(".AddEventBlock,.body_blur").show();
}

function goodsIdIncrement(Cust_Id)
{
	$.getJSON("http://localhost:8080/SCMXPert/getIncrementedGoodsId/"+Cust_Id,function(response){
		$("#GoodNumber").val(response).css("font-weight","bold").attr("disabled","disabled");
	});
}
function getAllGoods()
{
	var Cust_Id = $("#Cust_Id").val();	
	$.getJSON("http://localhost:8080/SCMXPert/getGoods/"+Cust_Id,function(response){
		$.each(response,function(key,value){
			var Goods = '<option value="'+value.goods_Item+'">'+value.goods_Item+'</option>';
			$("#items").append(Goods);
			$("#goods_id_vaal").append(Goods);
			var goods_Status = '<option value="'+value.goods_Status+'">'+value.goods_Status+'</option>';
			$("#Status").append(goods_Status);
		});
		
	});
}
function SelectGood(goodItem)
{
	
}
function addGoodsNew()
{
	var goodstype = $("#goodstypevalue").val();
	$("#items").append('<option value="'+goodstype+'">'+goodstype+'</option>');
	$("#items").val(goodstype);
	$(".AddEventBlock,.body_blur").hide();
}

function createGoods()
{
	var Cust_Id = $("#Cust_Id").val();
	var GoodNumber = $("#GoodNumber").val();
	var goodItem = $("#items").val();
	var goodStatus = $("#Status").val();
	var goodDesc = $("#goodsDesc").val();
	var tempFrom = $("#tempFrom").val();
	var tempTo = $("#tempTo").val();
	var humdFrom = $("#humFrom").val();
	var humdTo = $("#humTo").val();
	var shockFrom = $("#shockFrom").val();
	var shockTo = $("#shockTo").val();
	var tiltFrom = $("#tiltFrom").val();
	var tiltTo = $("#tiltTo").val();
	var smellFrom =  $("#smellFrom").val();
	var smellTo =  $("#smellTo").val();
	var cust_good_id =  $("#cust_good_id").val();
	var tempUnits =  $("#tempUnits").val();
	var humiUnits =  $("#humiUnits").val();
	var shockUnits =  $("#shockUnits").val();
	var tiltUnits =  $("#tiltUnits").val();
	var smellUnits =  $("#smellUnits").val();
	var sensorSelect =  $("#sensorSelect").val();
	var pressureSelect =  $("#pressureSelect").val();
	var hazardousSelect =  $("#hazardousSelect").val();
	var evidenceSelect =  $("#evidenceSelect").val();
	var goodsData = {
			"customerId":Cust_Id,
	        "description": goodDesc,
	        "goods_Id": GoodNumber,
	        "goods_Item":goodItem ,
	        "goodsTypeStatus": goodStatus,
	        "tempertureFrom": tempFrom,
	        "tempertureTo": tempTo,
	        "humidityFrom":humdFrom,
	        "humidityTo":humdTo,
	        "shockFrom":shockFrom,
	        "shockTo":shockTo ,
	        "tiltFrom": tiltFrom,
	        "tiltTo": tiltTo,
	        "smellFrom": smellFrom,
	        "smellTo": smellTo,
	        "custGoodId":cust_good_id,
	        "control_Params": '',
	        "tempUnits":tempUnits,
	        "humiUnits":humiUnits,
	        "shockUnits":shockUnits,
	        "tiltUnits":tiltUnits,
	        "smellUnits":smellUnits,
	        "sensorSelect":sensorSelect,
	        "pressureSelect":pressureSelect,
	        "hazardousSelect":hazardousSelect,
	        "evidenceSelect":evidenceSelect
	};

	var url = "http://localhost:8080/SCMXPert/addNewGood";
	$.ajax({
       	 type:"post",
		 url:url,
		 headers: { Accept : "application/json",
					'Content-Type': "application/json" 
			 		}, 
		 data: JSON.stringify(goodsData),
	    success: function(data) {
    	$("#backgroundBlur").show();
	    	$(".showviewdata").show().html('<div class="alert alert-success" role="alert">Successful Updated</div>');
	    	window.location.href = "Dashboard.jsp";
	    },
	}); 
}
function GoodDetailsWithId(Good_id,GoodsMasterGetRoute,Cust_Id)
{
	if(Good_id != ''){
		$.getJSON(GoodsMasterGetRoute,function(response){
			$.each(response,function(a,b){
				
				if(b.goods_Item == Good_id)
					{
					$("#createGoods").hide();
					$("#updateGoods").show();
					var GoodNumber = $("#GoodNumber").val(b.goods_Id);
					var goodItem = $("#items").val(b.goods_Item);
					var goodStatus = $("#Status").val(b.goods_Status);
					var goodDesc = $("#goodsDesc").val(b.description);
					var tempFrom = $("#tempFrom").val(b.temperture_From);
					var tempTo = $("#tempTo").val(b.temperture_To);
					var humdFrom = $("#humFrom").val(b.humidity_From);
					var humdTo = $("#humTo").val(b.humidity_To);
					var shockFrom = $("#shockFrom").val(b.shock_From);
					var shockTo = $("#shockTo").val(b.shock_To);
					var tiltFrom = $("#tiltFrom").val(b.tilt_From);
					var tiltTo = $("#tiltTo").val(b.tilt_To);
					var smellFrom =  $("#smellFrom").val(b.smell_From);
					var smellTo =  $("#smellTo").val(b.smell_To);
					var cust_good_id =  $("#cust_good_id").val(b.custGoodId);
					var tempUnits =  $("#tempUnits").val(b.tempUnits);
					var humiUnits =  $("#humiUnits").val(b.humiUnits);
					var shockUnits =  $("#shockUnits").val(b.shockUnits);
					var tiltUnits =  $("#tiltUnits").val(b.tiltUnits);
					var smellUnits =  $("#smellUnits").val(b.smellUnits);
					var sensorSelect =  $("#sensorSelect").val(b.sensorSelect);
					var pressureSelect =  $("#pressureSelect").val(b.pressureSelect);
					var hazardousSelect =  $("#hazardousSelect").val(b.hazardousSelect);
					var evidenceSelect =  $("#evidenceSelect").val(b.evidenceSelect);
					}

			});
		});
	}else{
		goodsIdIncrement(Cust_Id);
		$("#createGoods").show();
		$("#updateGoods").hide();
		var GoodNumber = $("#GoodNumber").val('');
		var goodItem = $("#items").val('');
		var goodStatus = $("#Status").val('');
		var goodDesc = $("#goodsDesc").val('');
		var tempFrom = $("#tempFrom").val('');
		var tempTo = $("#tempTo").val('');
		var humdFrom = $("#humFrom").val('');
		var humdTo = $("#humTo").val('');
		var shockFrom = $("#shockFrom").val('');
		var shockTo = $("#shockTo").val('');
		var tiltFrom = $("#tiltFrom").val('');
		var tiltTo = $("#tiltTo").val('');
		var smellFrom =  $("#smellFrom").val('');
		var smellTo =  $("#smellTo").val('');
		var cust_good_id =  $("#cust_good_id").val('');
		var sensorSelect =  $("#sensorSelect").val();
		var pressureSelect =  $("#pressureSelect").val();
		var hazardousSelect =  $("#hazardousSelect").val();
		var evidenceSelect =  $("#evidenceSelect").val();
	}

}
function UpdateGoods()
{
	var Cust_Id = $("#Cust_Id").val();
	var bp_name = $("#bp_name").val();
	var GoodNumber = $("#GoodNumber").val();
	var goodItem = $("#items").val();
	var goodStatus = $("#Status").val();
	var goodDesc = $("#goodsDesc").val();
	var tempFrom = $("#tempFrom").val();
	var tempTo = $("#tempTo").val();
	var humdFrom = $("#humFrom").val();
	var humdTo = $("#humTo").val();
	var shockFrom = $("#shockFrom").val();
	var shockTo = $("#shockTo").val();
	var tiltFrom = $("#tiltFrom").val();
	var tiltTo = $("#tiltTo").val();
	var smellFrom =  $("#smellFrom").val();
	var smellTo =  $("#smellTo").val();
	var cust_good_id =  $("#cust_good_id").val();
	var goodsData = {
			
	        "description": goodDesc,
	        "businessId":bp_name,
	        "goods_Id": GoodNumber,
	        "goods_Item":goodItem ,
	        "goodsTypeStatus": goodStatus,
	        "tempertureFrom": tempFrom,
	        "tempertureTo": tempTo,
	        "humidityFrom":humdFrom,
	        "humidityTo":humdTo,
	        "shockFrom":shockFrom,
	        "shockTo":shockTo ,
	        "tiltFrom": tiltFrom,
	        "tiltTo": tiltTo,
	        "smellFrom": smellFrom,
	        "smellTo": smellTo,
	        "custGoodId":cust_good_id,
	        "control_Params": ''
	};
	
	alert(JSON.stringify(goodsData));console.log(JSON.stringify(goodsData));
	var url = "http://localhost:8080/SCMXPert/updateGood";
	$.ajax({
       	 type:"post",
		 url:url,
		 headers: { Accept : "application/json",
					'Content-Type': "application/json" 
			 		}, 
		 data: JSON.stringify(goodsData),
	    success: function(data) {
    	$("#backgroundBlur").show();
	    	$(".showviewdata").show().html('<div class="alert alert-success" role="alert">Successful Updated</div>');
	    	return false;
	    	window.location.href = "Dashboard.jsp";
	    },
	}); 
}
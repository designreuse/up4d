$(function() {
	initValidate();
	listLanguage();
});

function listLanguage(){
	var dataItems = [];
	$.ajax({
		url : contextPath + "/json/listLanguage",
		type : "GET",
		dataType : "JSON",
		success : function(response) {
			var i = 0;
			$.each(response, function(key, value) {
				i++;
				dataItems.push([
						i,
						value.locale,
						value.name,
						getStatus(value.status),
						"<button class='btn btn-sm btn-primary' onclick='toUpdateLanguageForm("+ value.id + ")' >" +
								"<i class='fa fa-info'></i>&nbsp;Change Info</button>",
					    "<button class='btn btn-sm btn-danger' onclick='deleteLanguage("+ value.id + ")' >" +
					    "<i class='fa fa-info'></i>&nbsp;Delete</button>"]);
			});
			$('#tblLanguage').dataTable({
				"bDestroy" : true,
				"bSort" : true,
				"bFilter" : true,
				"bLengthChange" : true,
				"bPaginate" : true,
				"sDom" : '<"top">rt<"bottom"flp><"clear">',
				"aaData" : dataItems,
				"aaSorting" : [],
				"aoColumns" : [ {
					"sTitle" : "No"
				}, {
					"sTitle" : "Locale"
				}, {
					"sTitle" : "Name"
				},{
					"sTitle" : "Status"
				},{
					"sTitle" : "Change"
				}, {
					"sTitle" : "Delete"
				} ]
			});
		}
	});
}

function getStatus(status){
	if(status == "1"){
		return "Active";
	}else{
		return "Inactive";
	}
}

function initValidate() {
	$("#newLanguageForm").validate({
		rules : {
			locale : {
				required : true
			},
			langName : {
				required : true
			}
		},
		messages : {
			locale : {
				required : "Locale is not blank.",
			},
			langName : {
				required : "Name is not blank",
			}
		},
	});
	
	$("#updateLanguageForm").validate({
		rules : {
			locale : {
				required : true
			},
			langName : {
				required : true
			}
		},
		messages : {
			locale : {
				required : "Locale is not blank.",
			},
			langName : {
				required : "Name is not blank",
			}
		},
	}); 
}

function createLanguage() {
	var locale = $("#newLanguageForm input[name='locale']").val();
	var langName = $("#newLanguageForm input[name='langName']").val();
	if($("#newLanguageForm").valid()){
		$.ajax({
			url :contextPath + "/language/new",
			type : "POST",
			data :{
				locale : locale,
				langName : langName
			},
			dataType : "JSON",
			success : function(response) {
			},
			error: function (request,status, error) {
			    console.log(request.responseText);
			    alertify.success('Create language error.');
			},
			complete : function(){
				alertify.success('Create language successfully.');
				listLanguage();
				$("#newLanguageItem").modal("hide");
				$("#newLanguageForm")[0].reset();
			}
		});
	}
}

function toUpdateLanguageForm(id) {
	$.ajax({
		url : contextPath + "/language/get",
		type : "GET",
		data : {
			langId : id
		},
		dataType : "JSON",
		success : function(response) {
			$("#updateLanguageItem").modal("show");
			$("#updateLanguageForm input[name='langId']").val(response.id);
			$("#updateLanguageForm input[name='locale']").val(response.locale);
			$("#updateLanguageForm input[name='langName']").val(response.name);
		}
	});
}

function updateLanguage() {
	var langId = $("#updateLanguageForm input[name='langId']").val();
	var locale = $("#updateLanguageForm input[name='locale']").val();
	var langName = $("#updateLanguageForm input[name='langName']").val();
	if($("#updateLanguageForm").valid()){
		$.ajax({
			url :contextPath + "/language/edit",
			type : "POST",
			data :{
				langId : langId,
				locale : locale,
				langName : langName,
			},
			dataType : "JSON",
			success : function(response) {
			},
			error: function (request, status, error) {
			    console.log(request.responseText);
			    alertify.error('Update language error.');
			},
			complete : function(){
				alertify.success('Update language successfully.');
				listLanguage();
				$("#updateLanguageItem").modal("hide");
				$("#updateLanguageForm")[0].reset();
			}
		});
	}
}

function deleteLanguage(id) {
	if (confirm("Are you sure you want to delete this item?") == true) {
		$.ajax({
			url : contextPath + "/language/delete",
			type : "POST",
			data : {
				languageId : id
			},
			dataType : "JSON",
			success : function(response) {
				if(response ==false){
					alertify.error('Can not delete Language');
				}else{
					alertify.success('Delete language');
				}
				listLanguage();
			}
		});
	}
}


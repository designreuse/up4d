$(function(){
	
	initValidate();
	//Display table from page load
	displayTable();
});
//"aaData" : dataUsers,

function displayTable(){
	var dataItems = [];
	$.ajax({
		url : contextPath + "/json/listUserByDate",
		type : "GET",
		dataType : "JSON",
		success : function(response) {
			var i = 0;
			$.each(response, function(key, value) {
				i++;
				dataItems.push([
						i,
						value.username,value.firstName + " " + value.lastName,value.email,value.address,getStatus(value.status),value.role.name,showIcon(value.isRoot),
						"<button class='btn btn-sm btn-primary' onclick='changePass("
						+ value.id + ")' ><i class='fa fa-lock'></i>&nbsp; Change Password</button>",
						"<button class='btn btn-sm btn-primary' onclick='editItem("
								+ value.id + ")' ><i class='fa fa-info'></i>&nbsp;Change Info</button>",
						showDeleteButton(value.isRoot,value.id)]);
			});
			$('#tblUser').dataTable({
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
					"sTitle" : "Username"
				}, {
					"sTitle" : "Full name"
				},{
					"sTitle" : "Email"
				},{
					"sTitle" : "Address"
				},{
					"sTitle" : "Status"
				},{
					"sTitle" : "Role"
				},{
					"sTitle" : "Root Admin"
				},
				{
					"sTitle" : "Change password"
				}, 
				{
					"sTitle" : "Change"
				}, {
					"sTitle" : "Delete"
				} ]
			});
		}
	});
}

function changePass(id){
	$("#changeModal").modal("show");
	$("#changeModalForm .userId").val(id);
}

function editItem(id) {
	$.ajax({
		url : contextPath + "/user/get",
		type : "GET",
		data : {
			itemId : id
		},
		dataType : "JSON",
		success : function(response) {
			$("#updateItem").modal("show");
			$("#updateItemForm input[name='userId']").val(response.id);
			$("#updateItemForm input[name='username']").val(response.username);
			$("#updateItemForm input[name='firstName']").val(response.firstName);
			$("#updateItemForm input[name='lastName']").val(response.lastName);
			$("#updateItemForm input[name='email']").val(response.email);
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

function showIcon(isRoot){
	if(isRoot == "1"){
		return "<span style='color:green;' class='glyphicon glyphicon-ok' aria-hidden='true'></span>";
	}else{
		return "";
	}
}

function showDeleteButton(isRoot,id){
	if(isRoot == "1"){
		return "";
	}else{
		return "<button class='btn btn-sm btn-danger' onclick='deleteItem("
		+ id + ")'><i class='fa fa-trash'></i>&nbsp;Delete</button>"
	}
}


function initValidate(){
	$("#newItemForm").validate({
		rules : {
			username:{
				required:true,
				remote : {
					url : contextPath + "/user/checkUser",
					type : "GET",
					data: {
				          name: function() {
				            return $( "#newItemForm input[name='username']" ).val();
				          }
				    }
				}
			},
			password:{
				required:true,
				minlength:5
			},
			confirmPassword:{
				required:true,
				equalTo:"#newItemForm .password"
			},firstName:{
				required:true
			},lastName:{
				required:true
			},email : {
				required : true,
				remote : {
					url : contextPath + "/user/checkUser",
					type : "GET",
					data: {
				          name: function() {
				            return $( "#newItemForm input[name='email']" ).val();
				          }
				    }
				}
			},
			avatar:{
				required:true
			}
		},
		messages : {
			username:{
				required:"Username is not blank.",
				remote : "The username is exist"
			},
			password:{
				required:"Password is not blank",
				minlength:"Password is not less than 5 characters."
			},
			confirmPassword:{
				required:"Confirm password is not blank",
				equalTo:"Password and confirm password are not the same"
			},firstName:{
				required:"First name is not blank"
			},lastName:{
				required:"Last name is not blank"
			},email : {
				required : "The email is not blank",
				remote : "The email is existed"
			}
		},
	});
	
	$("#changeModalForm").validate({
		rules : {
			password:{
				required:true,
				minlength:5
			},
			confirmPassword:{
				required:true,
				equalTo:"#changeModalForm .password"
			}
		},
		messages : {
			password:{
				required:"Password is not blank",
				minlength:"Password is not less than 5 characters."
			},
			confirmPassword:{
				required:"Confirm password is not blank",
				equalTo:"Password and confirm password are not the same"
			}
		},
	});
	
	$("#updateItemForm").validate({
		rules : {
			username:{
				required:true,
			},fullname:{
				required:true
			},birthDate:{
				required:true
			},
			address:{
				required:true
			},
			phone:{
				required:true
			}
//			,
//			email :{
//				required : true,
//				remote : {
//					url : contextPath + "/user/checkUser",
//					type : "GET",
//					data: {
//				          name: function() {
//				            return $( "#updateItem input[name='email']" ).val();
//				          }
//				    }
//				}
//			}
		},
		messages : {
			userName:{
				required:"Username is not blank."
			},fullname:{
				required:"Full name is not blank"
			},birthDate:{
				required:"The birthdate is not blank"
			},
			address:{
				required:"Address is not blank"
			},
			phone:{
				required:"Phone is not blank"
			}
//			,email : {
//				required : "The email is not blank",
//				remote : "The email is existed"
//			}
		},
	});
}

function insertItem() {
	//var formData = new FormData($("#newItemForm")[0]);
	var username = $("#newItemForm input[name='username']").val();
	var password = $("#newItemForm input[name='password']").val();
	var firstName = $("#newItemForm input[name='firstName']").val();
	var lastName = $("#newItemForm input[name='lastName']").val();
	var email = $("#newItemForm input[name='email']").val();
	var roleBox = $("#newItemForm select[name='roleBox']").val();
	if($("#newItemForm").valid()){
		$.ajax({
			url :contextPath + "/user/new",
			type : "POST",
			data :{
				username : username,
				password : password,
				firstName : firstName,
				lastName : lastName,
				email : email,
				roleBox : roleBox
			},
			dataType : "JSON",
			success : function(response) {
			},
			error: function (request, status, error) {
			    console.log(request.responseText);
			    alertify.success('Create user error.');
			},
			complete : function(){
				alertify.success('Create user successfully.');
				displayTable();
				$("#newItem").modal("hide");
				$("#newItemForm")[0].reset();
			}
		});
	}
}


function changeInfo() {
	//var formData = new FormData($("#newItemForm")[0]);
	var userId = $("#updateItemForm input[name='userId']").val();
	var firstName = $("#updateItemForm input[name='firstName']").val();
	var lastName = $("#updateItemForm input[name='lastName']").val();
	var email = $("#updateItemForm input[name='email']").val();
	var roleBox = $("#updateItemForm select[name='roleBox']").val();
	if($("#updateItemForm").valid()){
		$.ajax({
			url :contextPath + "/user/changeInfo",
			type : "POST",
			data :{
				userId : userId,
				firstName : firstName,
				lastName : lastName,
				email : email,
				roleBox : roleBox
			},
			dataType : "JSON",
			success : function(response) {
			},
			error: function (request, status, error) {
			    console.log(request.responseText);
			    alertify.error('Update user error.');
			},
			complete : function(){
				alertify.success('Update user successfully.');
				displayTable();
				$("#updateItem").modal("hide");
				$("#updateItemForm")[0].reset();
			}
		});
	}
}

//Change Pass
function changePassProcess(){
	var userId = $("#changeModalForm .userId").val();
	var password = $("#changeModalForm .password").val();
	$.ajax({
		url : contextPath + "/user/changepassword",
		type : "POST",
		data : {
			userId : userId,
			password : password,
		},
		dataType : "JSON",
		success : function(response) {
			if (response == true) {
				alertify.success("Change password successfully");
			}
			else{
				alertify.error("Change password fail");
			}
		},
		complete:function(){
			$("#changeModalForm")[0].reset();
			$("#changeModal").modal("hide");
		}
	});
	
}

function deleteItem(id) {
	if(id==1){
		alert("We can't delete because it's root admin...");
		return;
	}
	if (confirm("Are you sure you want to proceed?") == true) {
		$.ajax({
			url : contextPath + "/user/delete",
			type : "POST",
			data : {
				itemId : id
			},
			dataType : "JSON",
			success : function(response) {
				if(response ==false){
					alertify.error('Can not delete user');
				}else{
					alertify.success('Delete user');
				}
				displayTable();
			}
		});
	}
}

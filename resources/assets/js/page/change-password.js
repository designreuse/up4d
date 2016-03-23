$(function() {
	$("#changePassForm").validate({
		rules : {
			password : {
				required : true
			},
			confirmPassword : {
				equalTo : "#password"
			}
		},
		messages : {
			password : {
				required : "Password can't blank."
			},
			confirmPassword : {
				equalTo : "Password Confirm and password are not the same"
			}
		}
	});
})

function alertMe() {
	var password = $("input[name='password']").val();
	var confirmPassword =$("input[name='confirmPassword']").val();
	if(password == confirmPassword){
		alert("Change password successfully");
	}
}
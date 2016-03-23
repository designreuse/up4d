$(function(){
	$("#changeInfo").hide();
	$('.combobox').selectpicker();
	$("#birthdate").datepicker();
	
});

function displayChangeInfo(){
	$("#changeInfo").toggle();
}
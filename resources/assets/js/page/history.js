$(function(){
	var prodName = $('#prodName').text();
	displayTable();
});

function displayTable(){
	var dataItems = [];
	$.ajax({
		url : contextPath + '/json/history20',
		type : 'GET',
		dataType : 'JSON',
		success : function(response) {
			var i=0;
			$.each(response, function(key, value) {
				i++;
				dataItems.push([
						i,value.username,moment(value.createdAt).format("Do MMMM YYYY ,h:mm:ss A"),value.type,value.ip,showBrowser(value.browser)]);
				// Create Data Items
				$('#tblItems').dataTable({
					"bDestroy" : true,
					"bSort" : false,
					"bFilter" : false,
					"bLengthChange" : false,
					"bPaginate" : false,
					"sDom" : '<"top">rt<"bottom"flp><"clear">',
					"aaData" : dataItems,
					"aaSorting" : [],
					"aoColumns" : [ {
						"sTitle" : "No"
					}, {
						"sTitle" : "Username"
					},{
						"sTitle" : "Date"
					}, {
						"sTitle" : "Type"
					}, {
						"sTitle" : "IP"
					},  {
						"sTitle" : "Browser"
					}]
				});
			});
		},
		error : function() {
		}
	});
}

// Maybe bring it to global javascript
function showBrowser(browser){
	var icon ;
	if(browser=='Opera'){
		icon = "<i title='Opera' class='fa fa-opera'></i>";
	}
	if(browser=='Firefox'){
		icon = "<i title='Fire fox' class='fa fa-firefox'></i>";
	}
	if(browser=='Chrome'){
		icon = "<i title='Chrome' class='fa fa-chrome'></i>";
	}
	if(browser=='Safari'){
		icon = "<i title='Safari' class='fa fa-safari'></i>";
	}
	if(browser=='IE'){
		icon = "<i title='Internet Explorer' class='fa fa-internet-explorer'></i>";
	}
	if(browser =='' || browser==undefined){
		icon = '';
	}
	return icon;
}